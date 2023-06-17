<?php

    session_start();
    date_default_timezone_set("Asia/Kolkata");


    require('admin/inc/db_config.php');
    require('admin/inc/essentials.php');
    

    $contact_q = "SELECT * FROM `contact_details` WHERE `sr_no`=?";
    $settings_q = "SELECT * FROM `settings` WHERE `sr_no`=?";

    $values = [1];
    $contact_r = mysqli_fetch_assoc(select($contact_q,$values,'i'));
    $settings_r = mysqli_fetch_assoc(select($settings_q,$values,'i'));

    if($settings_r['shutdown'])
    {
        echo<<<alertbar
            <div class='bg-danger text-center  p-2 fw-bold'>
            <i class="bi bi-exclamation-triangle"></i>
            Bookings Are temprorarily closed!
            </div>
        alertbar;
    }

?>