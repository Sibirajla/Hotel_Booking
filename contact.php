<!DOCTYPE html>
<html lang="en">
<head> 
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
    <?php require('inc/links.php'); ?>
    <title>SS HOTEL  - CONTACT</title>
</head>
<body class="bg-light">
  <?php require('inc/header.php'); ?>

<!-- Contact Us -->

  <div class="my-5 px-4">
    <h2 class="fw-bold h-font text-center">CONTACT US</h2>
    <div class="h-line  bg-dark"></div>
    <p class="text-center mt-3">
      Lorem ipsum, dolor sit amet consectetur adipisicing elit. <br>
      Animi saepe voluptate blanditiis quo aut corporis commodi dolores tempora incidunt fugit?
    </p>
  </div>

<!-- Our Facilities img section -->

  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-6 mb-5 px-4">
        <div class="bg-white rounded shadow p-4">
        <iframe class="w-100 rounded mb-4" height="320px" src="<?php echo $contact_r['iframe']?>" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          <h5>
            Address
          </h5>
            <a href="<?php echo $contact_r['gmap']?>" target="_blank" class="d-inline-block text-decoration-none text-dark mb-2">
              <i class="bi bi-geo-alt-fill"></i><!--space - &#160-->&#160 <?php echo $contact_r['address']?>
            </a>
            <h5 class="mt-4">Call us</h5>
            <a href="tel: +<?php echo$contact_r['pn1'] ?>" class="d-inline-block mb-2 text-decoration-none text-dark">
          <i class="bi bi-telephone-fill"></i> +<?php echo$contact_r['pn1'] ?>
          </a>
          <br>

          <?php
            if ($contact_r['pn2'] != '') {
                echo <<<data
                <a href="tel:+$contact_r[pn2]" class="d-inline-block mb-2 text-decoration-none text-dark">
                    <i class="bi bi-telephone-fill"></i> +$contact_r[pn2]
                </a>
                data;
            }
            ?>
        <h5 class="mt-4">
          Email
        </h5>
        <a href="mailto: <?php echo $contact_r['email']?>"  class="d-inline-block mb-2  text-decoration-none text-dark">
          <i class="bi bi-envelope"></i><!--space - &#160-->&#160 <?php echo $contact_r['email']?>
        </a>
        <h5 class="mt-4">Folow us</h5>
        <?php
          if ($contact_r['tw'] != ''){
            echo<<<data
            <a href="$contact_r[tw]" class="d-inline-block mb-3">
              <span class="badge bg-light text-dark fs-6 p-2">
              <i class="bi bi-twitter me-1"></i>
              </span>
            </a>
            data;
          }
        ?>
        <a href="<?php echo $contact_r['fb']?>" class="d-inline-block text-dark fs-5 me-2">
          <i class="bi bi-facebook me-1"></i>
        </a>
        <a href="<?php echo $contact_r['insta']?>" class="d-inline-block text-dark fs-5">
          <i class="bi bi-instagram me-1"></i>
        </a>
        </div>
      </div>


      <div class="col-lg-6 col-md-6 mb-5 px-4">
        <div class="bg-white rounded shadow p-4">
          <form method="POST">
            <h5>
              Send a message
            </h5>
              <div class="mt-3">
                <label  class="form-label" style="font-weight: 500;">Name</label>
                <input name="name" required type="text" class="form-control shadow-none">
              </div>
              <div class="mb-3">
                <label  class="form-label" style="font-weight: 500;">Email</label>
                <input name="email" required type="email" class="form-control shadow-none">
              </div>
              <div class="mb-3">
                <label  class="form-label" style="font-weight: 500;">Subject</label>
                <input name="subject" required type="text" class="form-control shadow-none">
              </div>
              <div class="mb-3">
                <label  class="form-label" style="font-weight: 500;">Message</label>
                <textarea name="message" required class="form-control shadow-none"  rows="5" style="resize: none;"></textarea>
              </div>
              <button type="submit" name="send" class="btn text-white custom-bg mt-3">SEND</button>
          </form>
        </div>
      </div>
    </div>
  </div> 


  <?php 

    if(isset($_POST['send']))
    {
      $frm_data = filteration($_POST);

      $q = "INSERT INTO `user_queries`(`name`, `email`, `subject`, `message`) VALUES (?,?,?,?)";
      $values= [$frm_data['name'],$frm_data['email'],$frm_data['subject'],$frm_data['message']];


      $res = insert($q,$values,'ssss');
      if($res==1){
        alert('success','Mail sent!');
      }else{
        alert('error','Server Down! Try again later.');
      }
    }
  
  ?>


<?php require('inc/footer.php'); ?>

</body>
</html>