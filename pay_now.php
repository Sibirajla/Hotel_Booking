<?php
require('admin/inc/db_config.php');
require('admin/inc/essentials.php');
require('inc/paytm/config_paytm.php');
require('inc/paytm/encdec_paytm.php');

date_default_timezone_set("Asia/Kolkata");

session_start();

if (!(isset($_SESSION['login']) && $_SESSION['login'] == true)) {
    redirect('index.php');
}

if (isset($_POST['pay_now'])) {
    header("Pragma: no-cache");
    header("Cache-Control: no-cache");
    header("Expires: 0");

    $checkSum = "";

    $ORDER_ID = 'ORD_' . $_SESSION['uId'] . random_int(11111, 99999999);
    $CUST_ID = $_SESSION['uId'];
    $INDUSTRY_TYPE_ID = INDUSTRY_TYPE_ID;
    $CHANNEL_ID = CHANNEL_ID;
    $TXN_AMOUNT = $_SESSION['room']['payment'];

    // Create an array having all required parameters for creating a checksum.
    $paramList = array(
        "MID" => PAYTM_MERCHANT_MID,
        "ORDER_ID" => $ORDER_ID,
        "CUST_ID" => $CUST_ID,
        "INDUSTRY_TYPE_ID" => $INDUSTRY_TYPE_ID,
        "CHANNEL_ID" => $CHANNEL_ID,
        "TXN_AMOUNT" => $TXN_AMOUNT,
        "WEBSITE" => PAYTM_MERCHANT_WEBSITE,
        "CALLBACK_URL" => CALLBACK_URL
    );

    // Generate a checksum using the getChecksumFromArray() function.
    $checkSum = getChecksumFromArray($paramList, PAYTM_MERCHANT_KEY);

    // Insert payment data into the database
    $frm_data = filteration($_POST);
    $query1 = "INSERT INTO `booking_order`(`user_id`, `room_id`, `check_in`, `check_out`, `order_id`) VALUES (?,?,?,?,?)";
    insert($query1, array($CUST_ID, $_SESSION['room']['id'], $frm_data['checkin'], $frm_data['checkout'], $ORDER_ID), 'issss');
    $booking_id = mysqli_insert_id($con);
    $query2 = "INSERT INTO `booking_details`(`booking_id`, `room_name`, `price`, `total_pay`, `user_name`, `phonenum`, `address`) VALUES (?,?,?,?,?,?,?)";
    insert($query2, array($booking_id, $_SESSION['room']['name'], $_SESSION['room']['price'], $TXN_AMOUNT, $frm_data['name'], $frm_data['phonenum'], $frm_data['address']), 'issssss');
}
?>

<html>
<head>
    <title>Processing</title>
</head>
<body>
    <h1>Please do not refresh this page...</h1>
    <form method="post" action="<?php echo PAYTM_TXN_URL ?>" name="f1">
        <?php
        foreach ($paramList as $name => $value) {
            echo '<input type="hidden" name="' . $name . '" value="' . $value . '">';
        }
        ?>
        <input type="hidden" name="CHECKSUMHASH" value="<?php echo $checkSum ?>">
    </form>

    <script type="text/javascript">
        document.f1.submit();
    </script>
</body>
</html>
