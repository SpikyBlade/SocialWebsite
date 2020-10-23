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

<div class="main_column column">

   <h4> Notification Settings </h4>
   <?php
      echo "<img src='" . $user['profile_pic'] . "' class='small_profile_pic'>";
   ?>
   <form action="settings-notifications.php" method="POST">
      <input type="submit" name="update_details_notifications" id="save_details" value="Update Details" class="info settings_submit"><br>
   </form>


</div>
