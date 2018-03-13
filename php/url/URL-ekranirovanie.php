<?php
#Пример #2 urlencode() and htmlentities() example
<?php
$query_string = 'foo=' . urlencode($foo) . '&bar=' . urlencode($bar);
echo '<a href="mycgi?' . htmlentities($query_string) . '">';
?>



#В ссилках браузер автоматично дописує сайт, якщо в адресі немає http://
<? echo urlencode("google.ru"); ?>
<a href="<? echo urlencode("google.ru"); ?>">qqqqqqqq</a>
<p>
<a href="<? echo "http://google.ru/"; ?>">zzzzz</a>


