<?php include('connect.php');?>

<!DOCTYPE html>
<html lang="en">
<title>行程資訊</title>
<head>
 
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>

<?php 
 $query = "SELECT * FROM tbltourpackages"; //搜尋 *(全部欄位) ，從 表staff

 //mysqli_query << PHP 有很多種...指令(?) ，這是其中一個，我現在還都是學到甚麼用什麼，沒辦法自己看手冊，然後實驗+學習使用。 

 $query_run = mysqli_query($con,$query); //$con <<此變數來自引入的 db_cn.php
?>
<div class="container">
<li class="breadcrumb-item"><a href="dashboard.php">Back to admin</a></i></li>

 <table class="table table-sm table-bordered"style="text-align:center;">
  <thead style="text-align:center;">
   <tr style="text-align:center;">
    <th>ID</th>
    <th>PackageName</th>
    <th>PackageType</th>
    <th>PackageLocation</th>
    <th>PackagePrice</th>
    <th>PackageFeatures</th>
    <th>PackageDetails</th>
    <th>PackageImage</th>
    <th>Creationdate</th>
    <th>UpdationDate</th>

   </tr>
  </thead>

  <tbody>
   <!-- 大括號的上、下半部分 分別用 PHP 拆開 ，這樣中間就可以純用HTML語法-->
   <?php
    if(mysqli_num_rows($query_run) > 0)
    {
     foreach($query_run as $row)
     {
   ?>
       <tr>
        <!-- $row['(輸入資料表的欄位名稱)'];  <<用雙引號也行 -->
        <td><?php echo $row['PackageId']; ?></td> 
        <td><?php echo $row['PackageName']; ?></td> 
        <td><?php echo $row['PackageType']; ?></td>
        <td><?php echo $row['PackageLocation']; ?></td> 
        <td><?php echo $row['PackagePrice']; ?></td>
        <td><?php echo $row['PackageFetures']; ?></td>
        <td><?php echo $row['PackageDetails']; ?></td>
        <td><?php echo $row['PackageImage']; ?></td>
        <td><?php echo $row['Creationdate']; ?></td>
        <td><?php echo $row['UpdationDate']; ?></td>


       </tr>
   <?php
      }
    }
   ?>
  </tbody>
 </body>

</div>