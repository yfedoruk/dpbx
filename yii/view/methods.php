<?php
// *** model methods *** //

// get model resource data from mysql table :
$data->attributeLabels();
$data->getAttributes();
$data->getAttribute('sku') // table field 'sku' value.
$data->attributeNames(); // list fields in table

// related models ( foreign keys )
$data->relations();

// ??
$data->rules();

// mysql
$data->getTableAlias();


$data->getValidators(); //return array of CStringValidator objects