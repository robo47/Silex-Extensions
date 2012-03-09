<?php

use Symfony\Component\ClassLoader\UniversalClassLoader;

require_once __DIR__ . '/../silex.phar';

if (file_exists(__DIR__ . '/../vendor/.composer/autoload.php')) {
    require_once __DIR__ . '/../vendor/.composer/autoload.php';
} else {

    $loader = new UniversalClassLoader();
    $loader->registerNamespace('SilexExtension', __DIR__ . '/../src');
    $loader->register();

}