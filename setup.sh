#!/usr/bin/env bash

composer install
npm install && npm run dev
sed 's/DB_CONNECTION=mysql/DB_CONNECTION=sqlite/g' .env.example > .env
touch database/database.sqlite
php artisan migrate