<?php

$mysqlHost = "mysql.h24hosting.com";
$mysqlUser = "h2web_pushpanel";
$mysqlPwd = "S*%Zt%q38ST^";
$mysqlDbname = "h2web_pushpanel";

if (!$_POST['token'] || $_POST['token'] == '') {
die("token required");
}
$token = $_POST['token'];

// Create connection
$conn = mysqli_connect($mysqlHost, $mysqlUser, $mysqlPwd, $mysqlDbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO users (users_android_token) VALUES ('$token')";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

$conn->close();

?>