<?php

//wrong (can be more than one replacement if $path has identical sectors )
str_replace(basename($path), $name, $path );

//right
dirname($path) . DS . $name;


/* check: is path in /aaa/bbb/ccc ? */
if( strpos($path, '/aaa/bbb/ccc') === 0 ){ }

//also
substr($path, strlen($this->root)+1) // don't use it!! If somehow $path do not have in begin $this->root, it was wrong!

//for replacements better use this:
if( strpos($path, 'asd') === 0 ){
	$path = preg_replace('/asd/', '', $path, 1); //or
	//$path = str_replace('/asd/', '', $path, $wtf=1); //fuck!
}


public static function dirSize($dir){
	
	// fast linux solution
	$output = exec('du -sk ' . $dir);
	return round(trim(str_replace($dir, '', $output))/1000, 1);
	
	$bytestotal = 0;
	$objects = new RecursiveIteratorIterator (new RecursiveDirectoryIterator($dir, RecursiveDirectoryIterator::SKIP_DOTS), RecursiveIteratorIterator::CHILD_FIRST);
	foreach ($objects as $path => $object){
		if( is_dir($path) ){ continue; }
		$bytestotal += filesize($path);
		//$bytestotal += $object->getSize();
	}
	return round($bytestotal/(1024*1024), 2);
}

public static function walkdir($dir){
	if( is_file($dir) ){
		return array($dir);
	}
	$objects = new RecursiveIteratorIterator (new RecursiveDirectoryIterator($dir, RecursiveDirectoryIterator::SKIP_DOTS), RecursiveIteratorIterator::CHILD_FIRST);
	$items = array();
	foreach ($objects as $name => $object){
		$items[] = $name;
	}
	return $items;
}

public static function parentDirs($path, $stopDir){
	$dirs = array();
	$parent = dirname($path);
	while ( $parent !== $stopDir ){
		array_push($dirs, $parent);
		$parent = dirname($parent);
	}
	return $dirs;
}

public static function isEmptyDir($path){
	if( is_file($path) ){
		return null;
	}
	return (count(glob($path."/*")) === 0 );
}


public static function isInDir($dir, $file){
	$items = Helper::walkdir($dir);
	return in_array($file, $items);
}

public static function rmdirs($dirPath){
	if ( is_file($dirPath) || is_link($dirPath) ) {
		return unlink($dirPath);
	}
	foreach(new RecursiveIteratorIterator(new RecursiveDirectoryIterator($dirPath, FilesystemIterator::SKIP_DOTS), RecursiveIteratorIterator::CHILD_FIRST) as $path) {
		( $path->isFile() || $path->isLink() ) ? unlink($path->getPathname()) : rmdir($path->getPathname());
	}
	return rmdir($dirPath);
}