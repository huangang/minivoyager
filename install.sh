#!/bin/bash
composer install
cp -rf hack/User.php vendor/tcg/voyager/src/Models/User.php
php artisan migrate
php artisan db:seed --class=VoyagerDatabaseSeeder
php artisan voyager:admin admin@admin.com --create
