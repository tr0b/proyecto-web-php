<?php 
require_once("include/config.php");
if(!empty($_POST["emailid"])) {
	$email= $_POST["emailid"];
	
		$result =mysqli_query($con,"SELECT docEmail FROM doctors WHERE docEmail='$email'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> El email ya existe .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Correo electrónico disponible para registro.</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>


<?php 
require_once("include/config.php");
if(!empty($_POST["emailic"])) {
	$email= $_POST["emailic"];
	
		$result =mysqli_query($con,"SELECT cedula FROM tblpatient WHERE cedula='$email'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'>La cedula actualmente esta registrada en un paciente .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'>Cedula lista para ser registrada</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>


