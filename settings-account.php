<?php
include("includes/header.php");
include("includes/form_handlers/settings_handler.php");
?>

<style type="text/css">
  .wrapper {
     margin-left: 0px;
     padding-left: 0px;
  }
</style>

<!-- TODO: Make the Left side buttons create new pages for settings -->
<div class="settings_tab_left">
   <div class="settings_tab_left_buttons">
      <a href="settings-account.php"><input type="submit" class="deep_blue active" value="Account"></a>
      <a href="settings-privacy.php"><input type="submit" class="deep_blue" value="Privacy"></a>
      <a href="settings-notifications.php"><input type="submit" class="deep_blue" value="Notifications"></a>
      <a href="settings-display.php"><input type="submit" class="deep_blue" value="Display"></a>
   </div>
</div>

<!-- TODO: Create a tab for changing styling.. Font / Text size / Colors / Language / ETC -->
<!-- TODO: Make a tab for adding adress / family / relationship status / Current job stauts / Current school status ETC -->
<!-- TODO: Create a tab for privacy settings -->

<!-- TODO: Check off the done tasks -->

<div class="main_column column">

   <h4> Account Settings </h4>
   <?php
   echo "<img src='" . $user['profile_pic'] . "' class='small_profile_pic'>";
   ?>
   <br>
   <a href="upload.php">Upload new profile picture</a> <br><br><br>

   Modify the values and click 'Update Details'<br><br>
   <?php
   $user_data_query = mysqli_query($con, "SELECT first_name, last_name, email, address, gender, country, marital_status FROM users WHERE username='$userLoggedIn'");
   $row = mysqli_fetch_array($user_data_query);

   $first_name = $row['first_name'];
   $last_name = $row['last_name'];
   $email = $row['email'];
   $address = $row['address'];
   $gender = $row['gender'];
   $marital_status = $row['marital_status'];
   $country = $row['country'];
   ?>

   <form action="settings-account.php" method="POST">
      First Name: <input type="text" name="first_name" value="<?php echo $first_name; ?>" id="settings_input"><br>
      Last Name: <input type="text" name="last_name" value="<?php echo $last_name; ?>" id="settings_input"><br>
      Email: <input type="text" name="email" value="<?php echo $email; ?>" id="settings_input"><br>

      <h5>Add additional information to your profile</h4>

      <!-- TODO: Create handling for gender / Marital status / address -->
      <!-- TODO: Add the needed new options to the database table -->
      <!-- TODO: Create a dropdown table selector for gender selection / marital_status / ETC -->
      <!-- TODO: Create a search bar for country they from and have a list of countries to select from -->
      <!-- TODO: Create a search bar for addresses and have auto selections based on what you type "Have most addreses" -->
      <!-- TODO: Create a textarea for a description of yourself -->

      Gender: <input type="text" name="gender" value="<?php echo $gender; ?>" placeholder="..." id="settings_input"><br>
      Marital status: <input type="text" name="marital_status" value="<?php echo $marital_status; ?>" placeholder="..." id="settings_input"><br>
      Country: <input type="text" name="country" value="<?php echo $country; ?>" placeholder="..." id="settings_input"><br>
      Address: <input type="text" name="address" value="<?php echo $address; ?>" placeholder="..." id="settings_input"><br>


      <!-- Counts down char until you can not type anymore -->
      <script>
        function countChar(val) {
          var len = val.value.length;
          if (len >= 100) {
            val.value = val.value.substring(0, 100);
          } else {
            $('#charNum').text(100 - len);
          }
        };
      </script>
      <form class="post_form">
         About me: <br><textarea class="post_form" name="about_me_text" id="about_me_text" maxlength="100" onkeyup="countChar(this)" placeholder="Got something else to say about you?"></textarea><br>
         <div id="charNum"></div>
      </form>

      <?php echo $message; ?>

      <input type="submit" name="update_details_account" id="save_details" value="Update Details" class="info settings_submit"><br>

   </form>

   <h5>Change Password</h4>
	<form action="settings-account.php" method="POST">
		Old Password: <input type="password" name="old_password" id="settings_input"><br>
		New Password: <input type="password" name="new_password_1" id="settings_input"><br>
		New Password Again: <input type="password" name="new_password_2" id="settings_input"><br>

		<?php echo $password_message; ?>

		<input type="submit" name="update_password" id="save_details" value="Update Password" class="info settings_submit"><br>
	</form>

   <h5>Close Account</h4>
   <form action="settings-account.php" method="POST">
      <input type="submit" name="close_account" id="close_account" value="Close Account" class="danger settings_submit">
   </form>

</div>
