#!/bin/bash

set -e
echo "[ ****************** ] Starting Endpoint of Application"

# if [ -d "./app" ]; then
#     rm -rf ./app
# fi
# if ! [ -d "./magento2" ]; then
#     echo "Magento not found - get from repository..."
#     composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition magento2  --ignore-platform-reqs
# fi

# if ! [ -d "./vendor" ]; then
#     echo "Vendor not found - Run compose install..."
#     composer install --ignore-platform-reqs --verbose
#     echo "Generating dependencies of Laravel with Artisan..."
# fi
echo "[ ****************** ] Ending Endpoint of Application"
exec "$@"