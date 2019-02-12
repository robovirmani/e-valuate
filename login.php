<?php

session_start();

if(isset($_SESSION["un"]))
{
  header("Location:home.php");
}





?>




<!DOCTYPE html>
<html>
<head>
  
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Sign In</title>
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






  
  
<!--===============================================================================================-->





</head>
<body>
<div class="main">
<?php

require_once("header.php");

?>
<div class="container" style="margin-left: 175px; margin-right: 150px;">
<div class="row">
<div class="col-sm-8">
<div class="form-group log">
<form action="process.php" name="f1" method="POST">

<br><br><br>

<h2>Login with your credentials:</h2>

<br><br><br><br>
<label for="username">Username</label><br><br>
<div class="wrap-input100 validate-input" data-validate="Username">
          <input class="input100" type="text" name="un" class="form-control" placeholder="Enter Username" required><br>
          <span class="focus-input100"></span>
</div>
<br><br>   
<label for="password">Password</label><br><br>

<div class="wrap-input100 validate-input" data-validate="Password">
          <input class="input100" type="password" class="form-control"  name="ps" placeholder="Enter Password" required><br>
          <span class="focus-input100"></span>
</div>

<br><br>
<div class="container-contact100-form-btn">
          <button class="contact100-form-btn" type="submit">
            Sign In
          </button>
        </div>
  

</form>
</div>
</div>

<div class="col-sm-4">

</div>
</div>
</div>




<?php

if(isset($_GET['value']))
{
   echo '<script language="javascript">';
echo 'alert("Invalid Details")';
echo '</script>';
}






?>

<br><br>

<?php

include("footer.php");

?>

</div>

</body>
</html>


