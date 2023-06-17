<?php
  require('inc/essentials.php');
  require('inc/db_config.php');
  adminLogin();
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name = "viewport"content="width=device-width, initial-scale=1.0">
  <title>Admin Panel - Refund Bookings</title>
  <?php require('inc/links.php'); ?>
</head>
<body class="bg-light">

<?php require('inc/header.php');
?>

<div class="container-fluid" id="main-content">
  <div class="row">
    <div class="col-lg-10 ms-auto p-4 overflow-hidden">
      <h3 class="mb-4">REFUND BOOKINGS</h3>

      <!-- Features -->
      <div class="card border-0 shadow-sm mb-4">
        <div class="card-body">

        <div class="text-end mb-4">
          <input type="text" oninput="get_bookings(this.value)" class="form-control shadow-none w-25 ms-auto" placeholder="&#128269; Type to search..........">
        </div>

          <!-- Table Data -->
          <div class="table-responsive" style="min-width: 1200px;">
            <table class="table table-hover border">
              <thead>
                <tr class="bg-dark text-light">
                  <th scope="col">#</th>
                  <th scope="col">User Details</th>
                  <th scope="col">Room Details</th>
                  <th scope="col">Refund Amount</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody id="table-data">
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

  <!-- Assign Room no  Modal -->

<div class="modal fade" id="assign-room" data-bs-backdrop="static" data-bs-keyboard="true" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <form id="assign_room_form">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5">Assign Room </h1>
          </div>
          <div class="modal-body">
            <div class= "mb-3">
              <label  class="form-label fw-bold">Room Number</label>
              <input type="text" name="room_no" class="form-control shadow-none" required>
            </div>
          </div>
            <span class="badge rounded-pill bg-light text-dark mb-3 text-wrap lh-base">
              Note: Assign Room Number only when user has been arrived!
            </span>
            <input type="hidden" name="booking_id">
          <div class="modal-footer">
            <button type="reset"  class="btn text-secondary shadow-none" data-bs-dismiss="modal">CANCEL</button>
            <button type="submit" class="btn custom-bg text-white shadow-none">ASSIGN</button>
          </div>
        </div>
      </form>
    </div>
  </div>



<?php require('inc/script.php'); ?>
<script src="scripts\refund_bookings.js"></script>
</body>
</html>