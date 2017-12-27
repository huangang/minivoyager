# 最小化voyager
_自定义管理员表_

## install
``` bash
composer install
cp -rf hack/User.php vendor/tcg/voyager/src/Models/User.php # 管理员表自定义
php artisan migrate # 创建数据库
php artisan db:seed --class=VoyagerDatabaseSeeder # 数据填充
php artisan voyager:admin admin@admin.com --create # 创建管理员
```
