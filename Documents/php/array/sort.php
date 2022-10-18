<?php


// https://www.designcise.com/web/tutorial/how-to-sort-an-array-by-keys-based-on-order-in-a-secondary-array-in-php
// How To Sort An Array By Keys Based On Order In A Secondary Array In PHP?



/** Using array_replace() */

$ordered_array = array_replace(array_flip($order), $user);
// Description:
//1. array_flip() changes the $order array's values to keys;
//2. array_replace() replaces the values of the first array with values having the same keys in the second array.


// PHP 4+
// $ordered_array = array_merge(array_flip($order), $user);