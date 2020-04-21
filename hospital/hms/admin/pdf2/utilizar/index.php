<?php

require('fpdf.php');

class PDF extends FPDF
{
// Cabecera de página
function Header()
{
    // Logo
  
    // Arial bold 15
    $this->SetFont('Arial','B',9);
    // Movernos a la derecha
    $this->Cell(65);
    // Título
    $this->Cell(50,10,'Historial de medicos',1,0,'C');
    // Salto de línea
    $this->Ln(20);
 
    $this->Cell(50,8,'Nombre medico',1,0,'C',0);
    $this->Cell(32,8,'especializacion',1,0,'C',0);
        $this->Cell(50,8,'email',1,0,'C',0);
    $this->Cell(30,8,'indentificacion',1,0,'C',0);


     $this->Cell(33,8,'Fecha de registro',1,1,'C',0);

}

// Pie de página
function Footer()
{
    // Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','B',9);
    // Número de página
    $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
}
}





require 'conexin.php';

$consulta ="select * from doctors";

$resultado =$mysqli->query($consulta);
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Arial','',9);

while ($row=$resultado->fetch_assoc()) {



    

    $pdf->Cell(50,10,$row['doctorName'],1,0,'C',0);

    $pdf->Cell(32,10,$row['specilization'],1,0,'C',0);
    $pdf->Cell(50,10,$row['docEmail'],1,0,'C',0);
    $pdf->Cell(30,10,$row['contactno'],1,0,'C',0);
  
    $pdf->Cell(33,10,$row['creationDate'],1,1,'C',0);

}


$pdf->Output();
?>
