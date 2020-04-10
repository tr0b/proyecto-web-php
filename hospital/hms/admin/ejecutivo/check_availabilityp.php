<?php 
require_once("include/config.php");
if(!empty($_POST["emailid"])) {
	$email= $_POST["emailid"];
	
		$result =mysqli_query($con,"SELECT 	PatientEmail FROM tblpatient WHERE PatientEmail='$email'");
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
if(!empty($_POST["patcontact"])) {
	$emailD= $_POST["patcontact"];
	
		$result =mysqli_query($con,"SELECT 	PatientContno FROM tblpatient WHERE PatientContno='$emailD'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> El doccumento ya existe porfavor verifique la lista de documento regsitrados .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Documento listo para hacer archivados.</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
