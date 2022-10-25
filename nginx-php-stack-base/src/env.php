<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 测试页面 </title>
</head>
<body>
<?php


if ( count($_GET) > 0 ) {
	echo "<h3>有_GET字段</h3><ul>";
	foreach ($_GET as $key => $value) { 
	echo "<li>$key ==> $value ";
	}
	echo "</ul>";
} else {
	echo "<h3>没有_GET字段</h3>". PHP_EOL;
}
echo '===========================<p>'. PHP_EOL;

$multipos = stripos($_SERVER['CONTENT_TYPE'], 'multipart');

if ( $_SERVER['REQUEST_METHOD'] == 'POST'  ) {	
	if ( strlen($multipos) == 0  ) {	
		echo '<h3>有非上传类型的POST body</h3>'. PHP_EOL;
		echo "<ul><li>". PHP_EOL;
		echo file_get_contents('php://input');
		echo PHP_EOL. "</li></ul>". PHP_EOL;
	}

	if( !empty($_POST) ) {
		echo "<h3>有_POST字段</h3><ul>". PHP_EOL;
		foreach ($_POST as $key => $value) { 
			echo "<li>$key ==> $value </li>". PHP_EOL;
		}
		echo "</ul>". PHP_EOL;
	}

	if( ! empty($_FILES)  &&  strlen($multipos)> 0 )  {
		echo "<h3>有文件上传</h3>" . "<ul>" . PHP_EOL;
		foreach ($_FILES as $key => $value) { 
			foreach ($value as $key2 => $value2) { 
				echo "<li>". $key2 . "：\t";	
				foreach ($value2 as $key3 => $value3) { 
						echo $value3 . "; \t" . PHP_EOL;	
				}
				echo "</li>". PHP_EOL;
			}
			echo "</ul> ".PHP_EOL;
		}
	}

} else {
	echo "<h3>没有_POST字段</h3>". PHP_EOL;
}

echo '==========================='. PHP_EOL;
if ( !empty($_REQUEST) ) {
	echo '<h3>有_REQUEST字段</h3><ul>' . PHP_EOL;
	foreach ($_REQUEST as $key => $value) { 
		echo "<li>$key ==> $value </li>" . PHP_EOL;
	}
	echo '</ul>' . PHP_EOL;	
} else {
	echo '<h3>没有_REQUEST字段</h3>'. PHP_EOL;
}
echo '<hr>'. PHP_EOL;
?>

<?php
echo '<h3>HTTP 请求头</h3><ul>' . PHP_EOL;
if (!function_exists('getallheaders')) 
{ 
    function getallheaders() 
    { 
       $headers = array ();
       foreach ($_SERVER as $name => $value) 
       { 
           if (substr($name, 0, 5) == 'HTTP_') 
           { 
               $headers[str_replace(' ', '-', ucwords(strtolower(str_replace('_', ' ', substr($name, 5)))))] = $value; 
           } 
       } 
       return $headers; 
    } 
} 

foreach(getallheaders() as $key=>$val){
  echo '<li>'. $key . ': ' . $val . '</li>' . PHP_EOL ;
}
echo "</ul>". PHP_EOL ;
?>
</body>