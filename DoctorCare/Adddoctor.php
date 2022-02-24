<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
include ("connectiondb.php");

?>


<table>
<form action="" method="post">



<tr>
<h1>      sign up your account                           </h1>
<br>
<td>      User Name                                       </td>
<td><input type="txt" name="txtname">                    </td>
<td><input type="txt" name="txtname">                    </td>
</tr>

<tr>
<td>      E-Mail                                         </td>
<td><input type="txt" name="txtname">                    </td>
</tr>

<tr>
<td>      Password                                       </td>
<td><input type="txt" name="txtname">                    </td>
</tr>

<tr>
<td><input type="submit" name="btnsubmit"> </td>
</tr>

</form>
</table>

<?php

   if(isset($_POS["btn"]))
   {
      $name = $_POST["txtname"];
      $email = $_POST["txtemail"];
      $password = $_POST["txtpassword"];

     $s = mysqli_query($con, "insert into doctorcaredb ( name,email,password )
     values('$name','$email','$password')");

     if($s>0)

     {
         echo "<script> alert('Data Save Successfully') </script>";
     }

     else
     {
        echo "<script> alert('Data Not Saved') </script>";
     }


   }


?>

</body>