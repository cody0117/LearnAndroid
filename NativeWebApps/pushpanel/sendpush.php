<?php

$mysqlHost = "mysql.h24hosting.com";
$mysqlUser = "h2web_pushpanel";
$mysqlPwd = "S*%Zt%q38ST^";
$mysqlDbname = "h2web_pushpanel";


class GCM {
    function __construct(){}
    
    public function send_notification($registatoin_ids,$data) {

        // GOOGLE API KEY
        define("GOOGLE_API_KEY","AIzaSyBaDkXc2rgRb6F8z6pQrdvjA1BdEvzy35c");
        $url="https://android.googleapis.com/gcm/send";
        $fields=array(
            "registration_ids"=>$registatoin_ids,
            "data"=>$data,
        );
        //var_dump($fields);
        $headers=array(
            "Authorization: key=".GOOGLE_API_KEY,
            "Content-Type: application/json"
        );
        $ch=curl_init();
        curl_setopt($ch,CURLOPT_URL,$url);
        curl_setopt($ch,CURLOPT_POST,true);
        curl_setopt($ch,CURLOPT_HTTPHEADER,$headers);
        curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
        curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,false);
        curl_setopt($ch,CURLOPT_POSTFIELDS,json_encode($fields));
        $result_gcm=curl_exec($ch);
        if($result_gcm===FALSE){
            die("Curl failed: ".curl_error($ch));
        }
        curl_close($ch);
        //echo $result_gcm;
    }
}



// Create connection
$conn = mysqli_connect($mysqlHost, $mysqlUser, $mysqlPwd, $mysqlDbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}


$result = $conn->query("SELECT * FROM users WHERE users_android_token IS NOT NULL AND users_android_token <> ''");

$android_tokens = array();
$x=0;

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
         $android_tokens[] = $row["users_android_token"];
    $x++;
    }
} else {
    echo "0 results";
}
$conn->close();

$title = $_POST['title'];
$msg = $_POST['message'];
$link = $_POST['link'];

if ($android_tokens != array()) {
    $gcm=new GCM();
    $data=array("title"=>$title,"description"=>$msg,"link"=>$link);
    $result_android=$gcm->send_notification($android_tokens,$data);
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Android Push Panel</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
     <div class="container">
      <div class="header clearfix">
       
        <h3 class="text-muted">Android Push Panel</h3>
      </div>

      <div class="jumbotron">
        <h1>Good!</h1>
       <p>You have sent <?php echo $x;?> push notification.</p>
</form>
      </div>

      <div class="row marketing">
        <div class="col-lg-6">


          <h4>Requirements</h4>
          <p>WebApp Essentials v1+ & PHP5 & Mysql database</p>

          <h4>Where can I download WebApp Essentials?</h4>
          <p>Link</p>
        
          
        </div>

        <div class="col-lg-6">
          <h4>How to works?</h4>
             <p>When the app WebApp Essentials starts, it will send its token to the server configured in it. The token is saved in the database, and this script allows you to cycle all the tokens and send a push notification.</p>

          

        </div>
      </div>

      <footer class="footer">
        <p>&copy; DigitalBorder 2015</p>
      </footer>

    </div> 

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>