phpize
./configure
make
sudo make install
echo 
sudo php5enmod functional
if [ $? -ne 0 ]; then
	sudo cp functional.ini /etc/php5/mods-available/functional.ini
	sudo php5enmod functional
	if [ $? -ne 0 ]; then
		echo "Cannot activate functional module. Please activate it manually."
	fi
else
	echo "Module functional is already active."
fi



