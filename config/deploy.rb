# config valid only for current version of Capistrano
lock "3.7.1"

# set :application, "my_app_name"
# set :repo_url, "git@example.com:me/my_repo.git"

set :repo_url, 'git@github.com:OleksandrPoltavets/e_shop.git'
set :application, 'e_shop'

set :user, 'sancho'
set :rails_env, 'production'
server '109.227.80.56', user: "#{fetch(:user)}", roles: %w{app db web}, primary: true
set :deploy_to,       "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :pty, true

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml', 'config/puma.rb')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :config_example_suffix, '.example'
set :config_files, %w{config/database.yml config/secrets.yml}
set :puma_conf, "#{shared_path}/config/puma.rb"

namespace :deploy do
  task :initial do
    on roles(:app) do
      before 'deploy:check:linked_files', 'config:push'
      before 'deploy:check:linked_files', 'puma:config'
      before 'deploy:check:linked_files', 'puma:nginx_config'
      before 'deploy:migrate', 'deploy:db:create'
      after 'deploy:migrate', 'deploy:db:seed'
      after 'puma:smart_restart', 'nginx:restart'
      invoke 'deploy'
    end
  end
end
