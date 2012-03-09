


# installing php5 memcached
apt-get install php5-memcached

# installing mongo extension
curl -s http://pecl.php.net/get/mongo-1.2.9.tgz > mongo-1.2.9.tgz
tar -xzf mongo-1.2.9.tgz
sh -c "cd mongo-1.2.9 && phpize && ./configure && make && sudo make install"
echo "extension=mongo.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`