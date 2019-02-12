<?php

session_start();

require_once("config.php");
require_once("connection.php");
if(!isset($_SESSION['un']))
{
  header("Location:login.php");
}
if(isset($_SESSION['un']))
{
  $username=$_SESSION['un'];
}




?>


<!DOCTYPE html>
<html>
<head>
  
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Standings</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
        <script src="bootstrap-3.3.7/js/bootstrap.min.js" </script>
        <script src="bootstrap-3.3.7/js/bootstrap.js" </script>
        <script src="js/jquery.nivo.slider.js" type="text/javascript"></script>


        <script src="js/highcharts.js"></script>
        <script src="js/highcharts1.js"></script>
        <script src="js/highcharts2.js"></script>
        <script src="js/highcharts3.js"></script>

        <style>
            #chartContainer {
              margin-top: 30px;
              height: 400px;
              width: 100%;
              max-width: 600px;
              margin-left: auto;
              margin-right: auto;
            }
        </style>




</head>
<body>
<div class="main">
<?php

include("header.php");

?>



<div class="row log">
<div class="col-sm-10">
<div class=""><h3 style="text-align:center;">Standings</h3></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">
  
</div>

</div>




<div class="row cspace" style="margin-left: 120px">

<div class="col-sm-9">
  <div class="table-responsive">


    <table class="table" id = "datatable" style="display: none;">
    <thead>
    <tr>
     
     <th>Name</th>
     
     <th>Total Points</th>
     
    </tr>
    </thead>
    <tbody>



<?php


if(isset($_GET['id']))
{
  $conid=$_GET['id'];
  

/*$sql="SELECT sname,SUM(status) AS Solved FROM ( SELECT * FROM submission WHERE cid='$conid' AND status='1'  GROUP BY  pbname,sname )T1 GROUP BY sname

UNION ALL

SELECT * FROM  (SELECT sname, SUM(status) As Solved  FROM submission WHERE cid='$conid' GROUP BY  sname)T2  HAVING Solved='0'
ORDER BY `Solved`  DESC ";*/

$sql="SELECT sname, SUM(status) As Solved, SUM(point) As Points FROM submission Where cid='$conid' GROUP BY sname ORDER BY Points DESC";

$send=mysqli_query($con,$sql);
$i=0;
while($row=mysqli_fetch_array($send))
{
  $i++;
  echo "

  <tr>

  

  <th><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td>
  
  <td>$row[Points]</td>
  

  </tr>";
}

  echo "</tbody>
</table>
</div>";

 

}
?>












<div class="col-sm-2">

</div>
</div>
</div>




<div class="row cspace" style="margin-left: 30px; ">

<div class="col-sm-9" >
  <div class="table-responsive">


    <table class="table" id = "datatable">
    <thead>
    <tr>
     <th>Rank</th>
     <th>Name</th>
     <th>Total Solved</th>
     <th>Total Points</th>
     <th>Submission</th>
    </tr>
    </thead>
    <tbody>



<?php


if(isset($_GET['id']))
{
  $conid=$_GET['id'];
  

/*$sql="SELECT sname,SUM(status) AS Solved FROM ( SELECT * FROM submission WHERE cid='$conid' AND status='1'  GROUP BY  pbname,sname )T1 GROUP BY sname

UNION ALL

SELECT * FROM  (SELECT sname, SUM(status) As Solved  FROM submission WHERE cid='$conid' GROUP BY  sname)T2  HAVING Solved='0'
ORDER BY `Solved`  DESC ";*/

$sql="SELECT sname, SUM(status) As Solved, SUM(point) As Points FROM submission Where cid='$conid' GROUP BY sname ORDER BY Points DESC";

$send=mysqli_query($con,$sql);
$i=0;
while($row=mysqli_fetch_array($send))
{
  $i++;
  echo "<tr><td>$i</td><td><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td><td>$row[Solved]</td><td>$row[Points]</td><td><a href=\"contestsubmission.php?id=$conid&show=$row[sname]\"><div class=\"btn btn-primary btn-xs\">Show</td></tr>";
}

  echo "</tbody>
</table>
</div>";

 

}
?>
</div>

<div class="col-sm-2">

</div>
</div>







<br><br><br>



<div id="chartContainer"></div>

<br><br><br><br><br><br>

</div>


<script type="text/javascript">
    
Highcharts.chart('chartContainer', {
  data: {
    table: 'datatable'
  },
  chart: {
    type: 'column'
  },
  title: {
    text: 'Class Performance'
  },
  yAxis: {
    allowDecimals: false,
    title: {
      text: 'Units'
    }
  },
  tooltip: {
    formatter: function () {
      return '<b>' + this.series.name + '</b><br/>' +
        this.point.y + ' ' + this.point.name.toLowerCase();
    }
  }
});


var x = document.getElementsByClassName("highcharts-credits");
x[0].style.display = "none";


</script>




<?php

include("footer.php");

?>




</body>
</html>












