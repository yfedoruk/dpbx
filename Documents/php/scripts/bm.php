<?php
class bm
{
    private static $begin;
    private static $end;

    public static function start()
    {
        self::$begin = microtime(true);
    }

    public static function end()
    {
        self::$end = microtime(true);
        self::out();
    }

    private static function out()
    {
        $time = self::$end - self::$begin;
        $length = strlen($time);
        $line2 = '';
        while ($length--){
            $line2 .= '*';
        }

        $break = self::is_browser() ? "<br />" : "\n";
//        $line1 = '----------time-----------';
        $line1 = 'time > ';
        $delimiter1 = $break . $line1 . $break;
        $delimiter2 = $break . $line2 . $break;
        echo $delimiter1 .
             $time .
             $delimiter2;
    }

    private static function is_browser()
    {
        return isset($_SERVER['HTTP_USER_AGENT']);
    }
}
