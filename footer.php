<!DOCTYPE html>
<html>
<head>
  
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="css/vlab.css">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
        <script src="bootstrap-3.3.7/js/bootstrap.min.js" </script>
        <script src="bootstrap-3.3.7/js/bootstrap.js" </script>
        <script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

        <script src="js/date_time.js" type="text/javascript"></script>
        <!--<script src="js/date_time2.js" type="text/javascript"></script>-->




</head>
<body>





<div class="area">
<div class="well foot">
<div class="row">


<div class="col-sm-5">



</div>


<div style="text-align: right;margin-right: 30px;">
<?php
date_default_timezone_set("Asia/Kolkata");
   $t=date("H:i:s");
   $h=date("H");
   $i=date("i");
   $s=date("s");
   $unix = time();


?>

            <span id="date_time"></span>
            <!--<script type="text/javascript">window.onload = date_time('date_time','<?=$h?>','<?=$i?>','<?=$s?>');</script>-->
            <script type="text/javascript">window.onload = date_time('date_time');</script>
            
</div>
</div>
</div>
</div>
</body>
</html>
