<?php

require_once('./db.php');
require_once('./classes/agencyRepository.php');

$agencyRepo = new AgencyRepository($db);

// $res = $agencyRepo->create(10,'testin10');

$res2 = $agencyRepo->read(3);

$res3 = $agencyRepo->update(3,'update2');

$res4 = $agencyRepo->delete(10);

var_dump ($res2);