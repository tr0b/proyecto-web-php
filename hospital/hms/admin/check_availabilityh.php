<?php 
require_once("include/config.php");
if(!empty($_POST["patcontact"])) {
	$patcontact= $_POST["patcontact"];
	
		$result =mysqli_query($con,"SELECT cama FROM habitacion WHERE cama='$patcontact'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'>la cama ya existe.</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Esta disponible la cama.</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>


<?php 
require_once("include/config.php");
if(!empty($_POST["patcontac"])) {
	$patcontac= $_POST["patcontac"];
	
		$result =mysqli_query($con,"SELECT cama FROM tblpatient WHERE cama='$patcontac'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'>La cama ya esta siendo utilizada</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Esta disponible la cama.</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
