<?php
   require 'config/config.php';
   include("includes/classes/User.php");
   include("includes/classes/Post.php");
   include("includes/classes/Message.php");

   if(isset($_SESSION['username'])) {
      $userLoggedIn = $_SESSION['username'];
      $user_detailes_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
      $user = mysqli_fetch_array($user_detailes_query);
   } else {
      header("Location: register.php");
   }

?>

<html>
<head>
   <title> Welcome to Wotter</title>

   <!-- Javascript -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
   <script
	  src="https://code.jquery.com/jquery-3.5.1.js"
	  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	  crossorigin="anonymous">
	</script>
   <script src="Assets/js/bootstrap.js"></script>
   <script src="Assets/js/bootbox.min.js"></script>
   <script src="Assets/js/wotter.js"></script>
   <script src="Assets/js/jquery.jcrop.js"></script>
   <script src="Assets/js/jcrop_bits.js"></script>

   <!-- CSS -->
   <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
   <link rel="stylesheet" type="text/css" href="Assets/css/bootstrap.css">
   <link rel="stylesheet" type="text/css" href="Assets/css/style.css">
   <link rel="stylesheet" href="Assets/css/jquery.Jcrop.css" type="text/css" />

</head>
<body>

   <div class="top_bar">
      <div class="logo">
         <a href="index.php">Wotter</a>
      </div>

      <nav>
         <a href="<?php echo $userLoggedIn; ?>">
            <?php
               echo $user['first_name'];
            ?>
         </a>
         <a href="index.php">
            <i class="fa fa-home fa-lg"></i>
         </a>
         <a href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn; ?>', 'message')">
            <i class="fa fa-envelope fa-lg"></i>
         </a>
         <a href="#">
            <i class="fa fa-bell-o fa-lg"></i>
         </a>
         <a href="requests.php">
            <i class="fa fa-users fa-lg"></i>
         </a>
         <a href="#">
            <i class="fa fa-cog fa-lg"></i>
         </a>
         <a href="includes/handlers/logout.php">
            <i class="fa fa-sign-out fa-lg"></i>
         </a>
      </nav>

      <div class="dropdown_data_window"></div>
      <input type="hidden" id="dropdown_data_type" value="">

   </div>

<div class="wrapper">
