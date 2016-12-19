# README

* Ruby version: 2.3.3

* Rails version 5.0.0



## To run App locally
  
1) git clone https://github.com/OleksandrPoltavets/e_shop

2) install PostgreSQL server on your machine and make sure current user has permissions to create databases

3) cd e_shop

4) bundle install
  
5) rake:db:create
  
6) rake:db:migrate
  
7) rake:db:seed
  
8) rails s

9) Open http://localhost:3000 in your browser


## Deployment instructions:

  For deployment you need Linux server with installed:
   
  Ruby v2.3.3, Rails v5.0.0, RVM, Git, Nginx, Puma, PostgreSQL, NodeJS
  
  Here is the manual with gist that can be used:
  
  * [Setup Linux server](https://gist.github.com/OleksandrPoltavets/449dd0eec06377c8a1d940f49939c4ea)
  
  * In app folder locally:
    - change file config/deploy.rb with your server IP and user name
    - update config/database.production.yml with your deployer user password that you configured in 
  postgresql on deployment server
  
    - run 'cap production deploy:initial' from your dev machine
  
    - follow the steps of Capistrano 3 tasks