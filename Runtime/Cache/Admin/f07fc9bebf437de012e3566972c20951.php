<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
<style>
	#Box{width: 100%;height: auto; background: #ccc;}
</style>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
    </head>
    <body>
    header 公用 美嘉留学
    </body>
</html>
<hr>
<div id="Box">


行注释和块注释
<hr>

输出一维数组(索引方式)：
<?php echo ($arr1["0"]); ?> - <?php echo ($arr1["1"]); ?> - <?php echo ($arr1["2"]); ?> - <?php echo ($arr1["3"]); ?>
<br>
输出一维数组(关联方式)：
<?php echo ($arr1[0]); ?> - <?php echo ($arr1[1]); ?> - <?php echo ($arr1[2]); ?> - <?php echo ($arr1[3]); ?>



<hr>
输出二维数组：
<?php echo ($arr2["0"]["0"]); ?> - <?php echo ($arr2["0"]["1"]); ?> - <?php echo ($arr2["0"]["2"]); ?> - <?php echo ($arr2["0"]["3"]); ?> 
<br>
输出关联的二维数组：
<?php echo ($arr2["1"]["name"]); ?> - <?php echo ($arr2["1"]["sex"]); ?> - <?php echo ($arr2["1"]["age"]); ?>


<hr>
thinkphp中的系统变量，就是一些PHP的全局变量 <br>
server信息中的path：<?php echo ($_SERVER['PATH']); ?> <br>
get信息中的id：<?php echo ($_GET['id']); ?> <br>
cookie信息中的sessionid：<?php echo (cookie('PHPSESSID')); ?> <br>
config信息中URL_MODEL：<?php echo (C("URL_MODEL")); ?> <br>

</div>

<hr>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
    </head>
    <body>
    foot 底部
    </body>
</html>
	
</body>
</html>