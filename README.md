# Laravel + Jetstream

## Quick Start
Clone the repo and run `setup.sh`
```
git clone https://github.com/dev-mda/laravel8-jetstream.git
cd laravel8-jetstream
./setup.sh
php artisan serve
```

## Manual Install

### Install Laravel
```
composer create-project --prefer-dist laravel/laravel laravel8-jetstream 
cd laravel8-jetstream 
```

### Install Jetstream
```
composer require laravel/jetstream
php artisan jetstream:install livewire --teams
npm install && npm run dev
```

### Set SQLite Database
For testing purposes, you may want to use SQLite instead of MySQL. <br />
Change `DB_CONNECTION` to `sqlite` in `.env`

```bash
sed 's/DB_CONNECTION=mysql/DB_CONNECTION=sqlite/g' .env.example > .env
sed -i -e '/DB_HOST/ s/^#*/#/' .env
sed -i -e '/DB_PORT/ s/^#*/#/' .env
sed -i -e '/DB_DATABASE/ s/^#*/#/' .env
sed -i -e '/DB_USERNAME/ s/^#*/#/' .env
sed -i -e '/DB_PASSWORD/ s/^#*/#/' .env
```

Create a empty database file and run the migrate
```
touch database/database.sqlite
php artisan migrate
```

Serve the plate
```
php artisan key:generate
php artisan serve
```

All done. Happy Laracodding

Note: You may also want to delete all the git data and work with your own repository
```
rm -rf .git
git init
git add .
git commit -m "Initial Commt"
```
Something like that. Be creative here 


The original Laravel `README.md` below

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

[The Laravel framework official Github repository](https://github.com/laravel/laravel)

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
