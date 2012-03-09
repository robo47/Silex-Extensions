

sudo apt-get install libmemcached-dev

# installing memcached extension
curl -s http://pecl.php.net/get/memcached-2.0.1.tgz > memcached-2.0.1.tgz
tar -xzf memcached-2.0.1.tgz
sh -c "cd memcached-2.0.1 && phpize && ./configure && make && sudo make install"
echo "extension=mongo.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`

# installing mongo extension
curl -s http://pecl.php.net/get/mongo-1.2.9.tgz > mongo-1.2.9.tgz
tar -xzf mongo-1.2.9.tgz
sh -c "cd mongo-1.2.9 && phpize && ./configure && make && sudo make install"
echo "extension=mongo.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`