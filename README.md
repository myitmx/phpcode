# phpdecode

一个可以解一些简单混淆加密PHP扩展


## 环境版本

**PHP 5.6**


## 下载

```
git clone https://github.com/myitmx/phpdecode.git
cd phpdecode
```


## 安装

```
phpize
./configure --with-php-config=/usr/local/php/bin/php-config
make && make install
```


## 配置

php.ini文件里添加
```
extension=decode.so
```


## 使用

```
php test.php
```