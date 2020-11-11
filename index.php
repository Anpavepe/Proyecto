<?php
session_start();
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login - <?php include('dist/includes/title.php');?></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
   <link rel="stylesheet" href="css/login.css">
   <link href="https://fonts.googleapis.com/css?family=Bowlby+One+SC&display=swap" rel="stylesheet">
  </head>
  <head>
</head>
<body>
<?php
include("database.php");
extract($_POST);

if(isset($submit))
{
      $sql = "SELECT * FROM mst_user WHERE login='$loginid' and pass='$pass'";
	$rs=mysqli_query($con,$sql);
  $row = mysqli_fetch_array($rs,MYSQLI_ASSOC);
    $count = mysqli_num_rows($rs);
	if($count<1)
	{
		$found="N";
	}
	else
	{
		$_SESSION[login]=$loginid;
	}
}

?>
  <h1>ANIMATED LOGIN</h1>
  <div class="login">
    <img id="monster" src="img/idle/1.png" alt="">
    <div class="container-form">
      <form name="form1" action="home.php" method="POST">
          <label for="">Username</label>
          <input name="loginid" id="loginid2" autocomplete="off" onfocus="follow = false" onblur="follow = true" type="text" required placeholder="name@email.com">
          <label for="">Password</label>
          <input name="pass" pass="pass" onfocus="cover()" onblur="uncover()" type="password" required placeholder="*********">

          <input name="submit" type="submit" value="login">
          <?php
          if(isset($found))
		  {
        header('location: home.php');
		  }else{
      }
      ?>
      </form>
    </div>
  </div>
  <script src="js/index.js"></script>
</body>
</html>