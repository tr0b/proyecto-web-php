<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

if(isset($_POST['submit']))
{	
	$docid=$_SESSION['id'];
	$patname=$_POST['patname'];
$patcontact=$_POST['patcontact'];
$patemail=$_POST['patemail'];
$gender=$_POST['gender'];
$pataddress=$_POST['pataddress'];
$patage=$_POST['patage'];
$medhis=$_POST['medhis'];
$password=md5($_POST['password']);
$habitacion=$_POST['habitacion'];
$piso=$_POST['piso'];
$cama=$_POST['cama'];
$sql=mysqli_query($con,"insert into tblpatient(Docid,PatientName,PatientContno,PatientEmail,PatientGender,PatientAdd,PatientAge,PatientMedhis,password,habitacion,piso,cama) values('$docid','$patname','$patcontact','$patemail','$gender','$pataddress','$patage','$medhis','$password','$habitacion','$piso','$cama')");
if($sql)
{
echo "<script>alert('Registrado exitosamente.');</script>";
header('location:manage-patient.php');

}
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Doctor | AGREGAR PACIENTE</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
		<script type="text/javascript">
function valid()
{
 if(document.registration.password.value!= document.registration.password_again.value)
{
alert("¡La contraseña y el campo Confirmar contraseña no coinciden!");
document.registration.password_again.focus();
return false;
}
return true;
}
</script>

	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#patemail").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>

	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
<div class="app-content">
<?php include('include/header.php');?>
						
<div class="main-content" >
<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
<section id="page-title">
<div class="row">
<div class="col-sm-8">
<h1 class="mainTitle">Doctor | Agregar Paciente</h1>
</div>
<ol class="breadcrumb">
<li>
<span>Patiente</span>
</li>
<li class="active">
<span>Agregar Paciente</span>
</li>
</ol>
</div>
</section>
<div class="container-fluid container-fullw bg-white">
<div class="row">
<div class="col-md-12">
<div class="row margin-top-30">
<div class="col-lg-8 col-md-12">
<div class="panel panel-white">
<div class="panel-heading">
<h5 class="panel-title">Add Patient</h5>
</div>
<div class="panel-body">
<form role="form" name="" method="post">

<div class="form-group">
<label for="doctorname">
Nombre del Paciente
</label>
<input type="text" name="patname" class="form-control"  placeholder="Enter Patient Name" required="true">
</div>
<div class="form-group">
<label for="fess">
 Contacto del Paciente no.
</label>
<input type="text" name="patcontact" class="form-control"  placeholder="Enter Patient Contact no" required="true" maxlength="10" pattern="[0-9]+">
</div>
<p>
								Ingrese los detalles de su cuenta a continuación:
							</p>
							<div class="form-group">
								<span class="input-icon">
									<input type="email" class="form-control" name="patemail" id="patemail" onBlur="userAvailability()"  placeholder="Correo" required>
									<i class="fa fa-envelope"></i> </span>
									 <span id="user-availability-status1" style="font-size:12px;"></span>
							</div>
<div class="form-group">
<label class="block">
Género
</label>
<div class="clip-radio radio-primary">
<input type="radio" id="rg-female" name="gender" value="female" >
<label for="rg-female">
Femenino
</label>
<input type="radio" id="rg-male" name="gender" value="male">
<label for="rg-male">
Masculino
</label>
</div>
</div>
<div class="form-group">
<label for="address">
Dirección de Procedencia
</label>
<textarea name="pataddress" class="form-control"  placeholder="Dirección de Procedencia" required="true"></textarea>
</div>
<div class="form-group">
<label for="fess">
 Edad del Paciente
</label>
<input type="text" name="patage" class="form-control"  placeholder="Edad del Paciente" required="true">
</div>
<div class="form-group">
<label for="fess">
 Historial Médico
</label>
<textarea type="text" name="medhis" class="form-control"  placeholder="Historial Médico" required="true"></textarea>
</div>
							<div class="form-group">
								<span class="input-icon">
									<input type="contraseña" class="form-control" id="password" name="password" placeholder="contraseña" required>
									<i class="fa fa-lock"></i> </span>
							</div>
							<div class="form-group">
								<span class="input-icon">
									<input type="password" class="form-control"  id="password_again" name="password_again" placeholder="Ingrese de nuevo la contraseña" required>
									<i class="fa fa-lock"></i> </span>
							</div>

														<div class="form-group">
															<label for="habitacion">
																Habitación
															</label>
							<select name="habitacion" class="form-control" required="true">
																<option value="">Seleccionar Habitación</option>
<?php $ret=mysqli_query($con,"select * from habitacion");
while($row=mysqli_fetch_array($ret))
{
?>
																<option value="<?php echo htmlentities($row['habitacion']);?>">
																	<?php echo htmlentities($row['habitacion']);?>
																</option>
																<?php } ?>
																
															</select>
														</div>


														<div class="form-group">
															<label for="habitacion">
															Piso
															</label>

	<select name="piso" class="form-control" required="true">
																<option value="">Seleccionar Piso</option>
<?php $ret=mysqli_query($con,"select * from habitacion");
while($row=mysqli_fetch_array($ret))
{
?>
																<option value="<?php echo htmlentities($row['piso']);?>">
																	<?php echo htmlentities($row['piso']);?>
																</option>
																<?php } ?>
																
															</select>
														</div>


														<div class="form-group">
															<label for="habitacion">
																Cama
															</label>

															<select name="cama" class="form-control" required="true">
																<option value="">Seleccionar Cama</option>
<?php $ret=mysqli_query($con,"select * from habitacion");
while($row=mysqli_fetch_array($ret))
{
?>
																<option value="<?php echo htmlentities($row['cama']);?>">
																	<?php echo htmlentities($row['cama']);?>
																</option>
																<?php } ?>
																
															</select>
														</div>
<button type="submit" name="submit" id="submit" class="btn btn-o btn-primary">
Agregar
</button>
</form>
</div>
</div>
</div>
</div>
</div>
<div class="col-lg-12 col-md-12">
<div class="panel panel-white">
</div>
</div>
</div>
</div>
</div>
</div>				
</div>
</div>
</div>
			<!-- start: FOOTER -->
<?php include('include/footer.php');?>
			<!-- end: FOOTER -->
		
			<!-- start: SETTINGS -->
<?php include('include/setting.php');?>
			
			<!-- end: SETTINGS -->
		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
		<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
		<script src="vendor/autosize/autosize.min.js"></script>
		<script src="vendor/selectFx/classie.js"></script>
		<script src="vendor/selectFx/selectFx.js"></script>
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<script src="assets/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="assets/js/form-elements.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
