<?php
session_start();
$nama = $_SESSION['nama'];
if($_SESSION['status']!="login"){
	header("location:index.php?pesan=belum_login");
}
?>
<html>
<head>
	<meta charshet="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!- - Boostrap CSS - ->
	<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
	<!- - My CSS - ->
	<link rel="stylesheet" type="text/css" href="asset/css/style.css">
	<!- - Boostrap ICON - ->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
	<link rel="shortcut icon" href="asset/img/logo/logo.png">
	<title>Profile</title>
</head>
<style>
@import url("https://fonts.googleapis.com/css2?family=Poppins:weight@100;200;300;400;500;600;700;800&display=swap");


       body{
        background-color:#b5d1a6;
        font-family: "Poppins", sans-serif;
        font-weight: 300;
       }

       .container{
        height: 100vh;
       }

       .card{

        width: 380px;
        border: none;
        border-radius: 15px;
        padding: 8px;
        background-color: #fff;
        position: relative;
        height: 370px;
       }

       .upper{

        height: 100px;

       }

       .upper img{

        width: 100%;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;

       }

       .user{
        position: relative;
       }

       .profile img{

        
        height: 80px;
        width: 80px;
        margin-top:2px;

       
       }

       .profile{

        position: absolute;
        top:-50px;
        left: 38%;
        height: 90px;
        width: 90px;
        border:3px solid #fff;

        border-radius: 50%;

       }

       .follow{

        border-radius: 15px;
        padding-left: 20px;
        padding-right: 20px;
        height: 35px;
       }

       .stats span{

        font-size: 29px;
       }
</style>
<body>
	<div class="container-fluid">
		<div class="row flex-nowrap">
			<div class="col-auto col-x1-2 px-sm-2 px-0 navigasi">
				<div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
					<a href="index.php" class="d-flex align-items-center pb-3 md-mb-0 me-md-auto text-white text-decoration-none">
						<span class="fs-5 d-none d-sm-inline">Peduli Kesehatan</span>
					</a>
					<ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
						<li class="nav-item">
							<a href="beranda.php" class="nav-link align-middle px-0 text-white">
								<i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline">Beranda</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="historyperjalanan.php" class="nav-link align-middle px-0 text-white">
								<i class="fs-4 bi-speedometer2"></i> <span class="ms-1 d-none d-sm-inline">Catatan Perjalanan</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="perjalanan.php" class="nav-link align-middle px-0 text-white">
								<i class="fs-4 bi-bookmark-heart"></i> <span class="ms-1 d-none d-sm-inline">Isi Data Perjalanan</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="catatan_lokasi.php" class="nav-link align-middle px-0 text-white">
								<i class="fs-4 bi-clipboard-heart"></i> <span class="ms-1 d-none d-sm-inline">Catatan Lokasi</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="lokasi.php" class="nav-link align-middle px-0 text-white">
								<i class="fs-4 bi-geo-alt"></i> <span class="ms-1 d-none d-sm-inline">Lokasi</span>
							</a>
						</li>
								
								</ul>
							</li>
						</ul>
						<hr>
						<div class="dropdown pb-4">
							<a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
								<img src="asset/img/dashboard/smile.png" alt="hugenerd" width="30" height="30" class="rounded-circle">
								<span class="d-none d-sm-inline mx-1"><?php
									include "koneksi.php";
									$nama = $_SESSION['nama'];
									$data = mysqli_query($koneksi,"select * from login where nama = '$nama'");
									$d = mysqli_fetch_array($data);
									echo $d['nama'];
								?>
								</span>
							</a>
							<ul class="dropdown-menu dropdown-menu-dark text-small shadow">
								<li><a class="dropdown-item" href="profile.php">Profile</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li>
									<a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#tombolkeluar">Keluar</a>
								</li>
							</ul>
						</div>
					</div>
			</div>
			<div class="col d-flex justify-content-center align-items-center">
				 
				 <div class="card">

				  <div class="upper">

					<img src="sampull.jpg" class="img-fluid">
					
				  </div>

				  <div class="user text-center">

					<div class="profile">

					  <img src="pp.jpg" class="rounded-circle" width="80">
					  
					</div>

				  </div>

<?php
								include "koneksi.php";
								$nama = $_SESSION['nama'];
								$data = mysqli_query($koneksi,"select * from login where nama = '$nama'");
								$d = mysqli_fetch_array($data);
								
							?>
				  <div class="mt-5 text-center">

					<h4 class="mb-0"><?php echo $d['nama'];    ?></h4>
					<span class="text-muted d-block mb-2"> </span>

					<button class="btn btn-primary btn-sm follow">user</button>


					<div class="d-flex justify-content-center align-items-center mt-4 px-4">


					  <div class="stats">
						<h5 class="mb-1">NIK</h6>
						<span><?php echo $d['nik'];    ?></span>

					  </div>

					  
					</div>
					
				  </div>
				   
				 </div>

			   </div>
			   
			   </div>

	<!- - Boostrap JS - ->
	<script type="text/module/javascript" herf="asset/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" intergrity="sha384-ka75k0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0lRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>