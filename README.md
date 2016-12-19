# README

* Ruby version: 2.3.3

* Rails version 5.0.0

* To run App locally
  
1) git clone https://github.com/OleksandrPoltavets/e_shop

2) install PostgreSQL server on your machine and make sure current user has permissions to create databases

3) cd e_shop

4) bundle install
  
5) rake:db:create
  
6) rake:db:migrate
  
7) rake:db:seed
  
8) rails s

9) Open http://localhost:3000 in your browser


* Simple deployment instructions:

  On your dev machine
  
  git clone https://github.com/OleksandrPoltavets/e_shop
  
  cd e_shop

  For deployment you need Linux server with installed:
   
  Ruby v2.3.3, Rails v5.0.0, RVM, GIT, NGINX, PUMA, PostgreSQL, NodeJS
  
  Here is the manual that can be used:
  
  Setup Linux server 
  https://www.digitalocean.com/community/tutorials/deploying-a-rails-app-on-ubuntu-14-04-with-capistrano-nginx-and-puma
      + sudo apt-get install nodejs
      + sudo apt-get install libpq-dev
      
  Add deployer user to postgresql, allow user to create databases
  
  Change file config/deploy.rb with your server IP and user name
  
  Update config/database.production.yml with your deployer user password that you configured in 
  postgresql on deployment server
  
  Run 'cap production deploy:initial' from your dev machine
  
  Follow the steps of Capistrano tasks