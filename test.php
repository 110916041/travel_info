
<?php
// 建立MySQL的資料庫連接 
    $servername =  "localhost:3308";
    $username = "testaccount";
    $password = "garygary";
    $database = "mytestdb";

    $link = new mysqli($servername ,$username ,$password ,$database);   


    if ( $link->connect_error ) {
    die("連接失敗" . $link->connect_error);

    }
    else {
    echo "MySQL資料庫test連接成功!<br/>";}

?>

