<?php

require('../admin/inc/db_config.php');
require('../admin/inc/essentials.php');
require('../inc/vendor/autoload.php');

date_default_timezone_set("Asia/Kolkata");

if (isset($_POST['check_availability'])) {
  $frm_data = filteration($_POST);
  $status = "";
  $result = "";

  // Check in and out validations
  $today_date = new DateTime(date("Y-m-d"));
  $checkin_date = new DateTime($frm_data['check_in']);
  $checkout_date = new DateTime($frm_data['check_out']);

  if ($checkin_date == $checkout_date) {
    $status = 'check_in_out_equal';
    $result = json_encode(["status" => $status]);
  } else if ($checkout_date < $checkin_date) {
    $status = 'check_out_earlier';
    $result = json_encode(["status" => $status]);
  } else if ($checkout_date && $checkin_date < $today_date) {
    $status = 'check_in_earlier';
    $result = json_encode(["status" => $status]);
  } else {
    session_start();
    $_SESSION['room'];

    // Run query to check if the room is available or not
    $tb_query = "SELECT COUNT(*) AS `total_bookings` FROM `booking_order`
            WHERE `booking_status`=? AND `room_id`=?
            AND check_out > ? AND check_in < ?";

    $values = ['booked', $_SESSION['room']['id'], $frm_data['check_in'], $frm_data['check_out']];
    $tb_fetch = mysqli_fetch_assoc(select($tb_query, $values, 'siss'));

    $rq_result = select("SELECT `quantity` FROM `rooms` WHERE `id`=?", [$_SESSION['room']['id']], 'i');
    $rq_fetch = mysqli_fetch_assoc($rq_result);

    if (($rq_fetch['quantity'] - $tb_fetch['total_bookings']) <= 0) {
      $status = 'unavailable';
      $result = json_encode(["status" => $status]);
    } else {
      $check_in = new DateTime($frm_data['check_in']);
      $check_out = new DateTime($frm_data['check_out']);

      $interval = $check_in->diff($check_out);
      $days = $interval->days;
      $price = $_SESSION['room']['price'];
      $payment = $days * $price;

      $_SESSION['room']['payment'] = $payment;
      $_SESSION['room']['available'] = true;

      $status = 'available';
      $result = json_encode(["status" => $status, "days" => $days, "payment" => $payment]);
    }
  }

  echo $result;
}
?>