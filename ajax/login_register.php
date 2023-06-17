<?php

require('../admin/inc/db_config.php');
require('../admin/inc/essentials.php');
require('../inc/vendor/autoload.php');

date_default_timezone_set("Asia/Kolkata");


use GuzzleHttp\Client;
use GuzzleHttp\Exception\RequestException;

function send_mail($email, $name, $token, $type) {

    if ($type == "email_confirmation") 
    {
        $page = 'email_confirm.php';
        $subject = 'Account Verification Link';
        $bodyHtml = '
            <h1 style="color: #ff0000;">Welcome to <span style="color: #0000ff;">SS HOTEL</span></h1>
            <p style="color: #333; font-size: 16px;">Thank you for registering with us, ' . $name . '. Please click the link below to confirm your email address:</p>
            <p style="color: #333;"><a href="' . SITE_URL . $page . '?' . $type . '&email=' . $email . '&token=' . $token . '" style="color: #00c;">Confirm Email</a></p>
            <p style="color: #333;">If the above link doesn\'t work, copy and paste the following URL into your browser:</p>
            <p style="color: #333;">' . SITE_URL . 'email_confirm.php?email=' . $email . '&token=' . $token . '</p>
            <p style="color: #333;">Thank you!</p>
        ';
    }
    else
    {
        $page = 'index.php';
        $subject = 'Account Reset Link';
        $bodyHtml = '
            <h1 style="color: #ff0000;">Welcome to <span style="color: #0000ff;">SS HOTEL</span></h1>
            <p style="color: #333; font-size: 16px;">Thank you for registering with us, ' . $name . '. Please click the link below to reset your password:</p>
            <p style="color: #333;"><a href="' . SITE_URL . $page . '?' . $type . '&email=' . $email . '&token=' . $token . '" style="color: #00c;">Reset Password</a></p>
            <p style="color: #333;">If the above link doesn\'t work, copy and paste the following URL into your browser:</p>
            <p style="color: #333;">' . SITE_URL . 'email_confirm.php?email=' . $email . '&token=' . $token . '</p>
            <p style="color: #333;">Thank you!</p>
        ';
    }

    $apiKey = API_KEY;
    $apiUrl = 'https://api.elasticemail.com/v2/email/send';


    // Prepare the email parameters
    $params = array(
        'from'    => ELASTIC_NAME . ' <' . ELASTIC_EMAIL . '>',
        'to'      => $email,
        'subject' => $subject,
        'bodyHtml' => $bodyHtml,
        'apiKey' => $apiKey
    );

    // Send the email
    try {
        $client = new Client();
        $response = $client->request('POST', $apiUrl, [
            'form_params' => $params
        ]);

        if ($response->getStatusCode() == 200) {
            return true;
        }
    } catch (RequestException $e) {
        echo 'Elastic Email error: ' . $e->getMessage();
    }

    return false;
}


if(isset($_POST['register']))
{
    $data = filteration($_POST);

    // Match password and confirm password
    if($data['pass'] != $data['cpass'])
    {
        echo 'pass_mismatch';
        exit;
    }

    // Check if user already exists
    $u_exist = select("SELECT * FROM `user_cred` WHERE `email`=? OR `phonenum`=? LIMIT 1",[$data['email'],$data['phonenum']],'ss');

    if(mysqli_num_rows($u_exist)!=0){
        $u_exist_fetch = mysqli_fetch_assoc($u_exist);
        echo ($u_exist_fetch['email'] == $data['email']) ? 'email_already' : 'phone_already';
        exit;
    }

    // Upload user image to server
    $img = uploadUserImage($_FILES['profile']);

    if($img == 'inv_img'){
        echo 'inv_img';
        exit;
    }
    else if($img == 'upd_failed'){
        echo 'upd_failed';
        exit;
    }

    // Send confirmation link to user's email
    $token = bin2hex(random_bytes(16));

    $name = $data['name'];

    if(!send_mail($data['email'],$name,$token,"email_confirmation"))
    {
        echo 'email_failed';
        exit;
    }

    $enc_pass = password_hash($data['pass'],PASSWORD_BCRYPT);

    $query = "INSERT INTO `user_cred`(`name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `token`) VALUES (?,?,?,?,?,?,?,?,?)";

    $values = [$data['name'],$data['email'],$data['address'],$data['phonenum'],$data['pincode'],$data['dob'],$img,$enc_pass,$token];

    if(insert($query,$values,'sssssssss')){
        echo 1;
    }
    else{
        echo 'ins_failed';
    }
}



if(isset($_POST['login']))
{
  $data = filteration($_POST);
  


  $u_exist = select("SELECT * FROM `user_cred` WHERE `email`=? OR `phonenum`=? LIMIT 1",[$data['email_mob'],$data['email_mob']],'ss');

  if(mysqli_num_rows($u_exist)==0)
  {
    echo 'inv_email_mob';
  }
  else{
    $u_fetch = mysqli_fetch_assoc($u_exist);
    if($u_fetch['is_verified']==0){
        echo'not_verified';
    }
    elseif($u_fetch['status']==0){
        echo 'inactive';
    }
    else{
        if(!password_verify($data['pass'],$u_fetch['password']))
        {
            echo 'invalid_pass';
        }
        else
        {
            session_start();
            $_SESSION['login'] = true;
            $_SESSION['uId'] = $u_fetch['id'];
            $_SESSION['uName'] = $u_fetch['name'];
            $_SESSION['uPic'] = $u_fetch['profile'];
            $_SESSION['uPhone'] = $u_fetch['phonenum'];
            echo 1;
        }
    }
  }
 
  
}


if(isset($_POST['forgot_pass']))
{
    $data = filteration($_POST);

    $u_exist = select("SELECT * FROM `user_cred` WHERE `email`=? LIMIT 1",[$data['email']],'s');

    if(mysqli_num_rows($u_exist)==0)
    {
        echo 'inv_email';
    }
    else
    {
        $u_fetch = mysqli_fetch_assoc($u_exist);
        if($u_fetch['is_verified']==0){
            echo'not_verified';
        }
        elseif($u_fetch['status']==0){
            echo 'inactive';
        }
        else{
            // send reset link to email
            $token = bin2hex(random_bytes(16));
            $name = $u_fetch['name'];
            
            if(!send_mail($data['email'],$name,$token,'account_recovery'))
            {
                echo 'mail_failed';
            }
            else
            {
                $date = date("Y-m-d");
                $query = mysqli_query($con,"UPDATE `user_cred` SET `token`='$token',`t_expire`='$date' WHERE `id`='$u_fetch[id]'");

                if($query){
                    echo 1;
                }
                else{
                    echo 'upd_failed';
                }

            }
        }
    }

}


if(isset($_POST['recover_user'])) {
    $data = filteration($_POST);
    $enc_pass = password_hash($data['pass'], PASSWORD_BCRYPT);

    $query = "UPDATE `user_cred` SET `password`=?, `token`=?, `t_expire`=? WHERE `email`=? AND `token`=?";
    $values = [$enc_pass, null, null, $data['email'], $data['token']];

    if(update($query, $values, 'sssss')) {
        echo 1;
    } else {
        echo 'failed';
    }
}

?>
