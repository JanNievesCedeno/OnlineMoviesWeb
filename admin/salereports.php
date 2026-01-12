<?php

function fetch_data ()
{
    require_once ('../backend/conecdb.php');
    $output = '';
    
    // Single query with JOINs - much more efficient than N+1 queries
    $stmt = $conex->prepare("SELECT s.sales_id, u.username, m.movie_name, s.sales_date, s.amount 
                             FROM sales s 
                             INNER JOIN users u ON s.user_id = u.user_id 
                             INNER JOIN movies m ON s.movie_id = m.movie_id");
    $stmt->execute();
    $result = $stmt->get_result();

    while($row = $result->fetch_assoc())
    {
        $output .= '<tr>
            <td> '.$row["sales_id"].'</td>
            <td> '.$row["username"].'</td>
            <td> '.$row["movie_name"].'</td>
            <td> '.$row["sales_date"].'</td>
            <td> $ '.$row["amount"].'</td>
            </tr>
            ';
    }
    return $output; 
}



    require_once ('library/tcpdf.php');
    $pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, "UTF-8", false);
    $pdf->SetCreator(PDF_CREATOR);
    $pdf->SetTitle("Sales View Reports");
    $pdf->SetHeaderData('','', PDF_HEADER_TITLE, PDF_HEADER_STRING);
    $pdf->SetHeaderFont(Array(PDF_FONT_NAME_MAIN,'', PDF_FONT_SIZE_MAIN));
    $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA,'', PDF_FONT_SIZE_DATA));
    $pdf->SetDefaultMonospacedFont('helvetica');
    $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
    $pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);
    $pdf->setPrintHeader(false);
    $pdf->setPrintFooter(false);
    $pdf->SetAutoPageBreak(TRUE, 10);
    $pdf->SetFont('helvetica', '', 11);

    $pdf->AddPage();
    $pdf->Cell (180,10,"Sales View Report",'',1,'C');
    $content = '';
    $content .= '
    <table  border="1" cellspacing="0" cellpadding="3">                                      
        <tr>
            <th>Sales Number</th>
            <th>Username</th>
            <th>Purchased Movie</th> 
            <th>Sales Date</th> 
            <th>Amount</th>                                             
        </tr>
    ';
    
    $content .= fetch_data();
    $content .= '</table>';
    $pdf->writeHTML ($content);
    $pdf->Output();