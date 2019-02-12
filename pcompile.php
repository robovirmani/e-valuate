
<?php

	$languageID=$_POST["language"];
        error_reporting(0);
	if($_FILES["file"]["name"]!="")
	{
		include "compilers/make.php";
	}
	else
	{
		switch($languageID)
			{
				case "c":
				{
					include("c.php");
					break;
				}
				case "cpp":
				{
					include("cpp.php");
					break;
				}
				case "java":
				{	
					include("java.php");
					break;
				}
			}
	}
?>


