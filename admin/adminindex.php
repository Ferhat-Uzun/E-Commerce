<!DOCTYPE html>
<html>
<?php

include("adminpartials/head.php");
include("adminpartials/session.php");

?>

<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

    <?php

    include("adminpartials/header.php");
    include("adminpartials/aside.php");
    ?>
    <!-- Left side column. contains the logo and sidebar -->


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Dashboard
          <small>Control panel</small>
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li class="active">Dashboard</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-sm-9">
            <a href="products.php">
              <button class="btn btn-success">Add Products</button>
            </a>
            <hr>
          </div>
          <div class="col-sm-9">
            <a href="categories.php">
              <button class="btn btn-success">Add Categories</button>
            </a>
            <hr>
          </div>
        </div>
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <?php
    include("adminpartials/footer.php");
    ?>
</body>

</html>