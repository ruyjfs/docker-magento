#!/bin/bash

set -e
echo "[ ****************** ] Starting Endpoint of Application"

# if [ -d "./app" ]; then
#     rm -rf ./app
# fi
# if ! [ -d "./app" ]; then
#     echo "Magento not found - get from repository..."
#     git clone -v https://github.com/magento/magento2.git ./app
# fi

if ! [ -d "./app/vendor" ]; then
    echo "Vendor not found - Run compose install..."
    composer install --ignore-platform-reqs --verbose
    echo "Generating dependencies of Laravel with Artisan..."
fi
echo "[ ****************** ] Ending Endpoint of Application"
exec "$@"