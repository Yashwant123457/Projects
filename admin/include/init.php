<?php
ob_start();
date_default_timezone_set('Asia/Manila');

// Define the absolute paths if not already defined
if (!defined('SITE_ROOT')) {
    define('SITE_ROOT', 'C:/xampp/htdocs/dbwedding/admin/');
}

if (!defined('INCLUDES_PATH')) {
    define('INCLUDES_PATH', SITE_ROOT . 'include/');
}

// Include necessary files
require_once INCLUDES_PATH . "Helper.php";
require_once INCLUDES_PATH . "config.php";
require_once INCLUDES_PATH . "database.php";
require_once INCLUDES_PATH . "db_object.php";
require_once INCLUDES_PATH . "Session.php";
require_once INCLUDES_PATH . "Accounts.php";
require_once INCLUDES_PATH . "Account_Details.php";
require_once INCLUDES_PATH . "Booking.php";
require_once INCLUDES_PATH . "Guest.php";
require_once INCLUDES_PATH . "Categories.php";
require_once INCLUDES_PATH . "Features.php";
require_once INCLUDES_PATH . "EventWedding.php";
require_once INCLUDES_PATH . "Gallery.php";
require_once INCLUDES_PATH . "Users.php";
require_once INCLUDES_PATH . "Events.php";
require_once INCLUDES_PATH . "Liquidation.php";

// Database connection setup (ensure correct credentials)
$con = mysqli_connect('localhost', 'root', '', 'wedding');

// Admin login logic
if (isset($_POST['admin'])) {
    // Your admin login code here
}

// User registration logic
if (isset($_POST['signup'])) {
    // Your user registration code here
}

// User login logic
if (isset($_POST['login'])) {
    // Your user login code here
}

// Wedding registration logic
if (isset($_POST['submit'])) {
    // Your wedding registration code here
    // ...
}
