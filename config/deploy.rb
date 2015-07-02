# config valid only for current version of Capistrano
require "bundler/capistrano"
require "rvm/capistrano"

lock '3.4.0'

server '104.236.224.161', user: 'root'

set :repo_url, 'git@github.com:jvidalba1/rami_web.git'
set :application, 'rami_web'
set :branch, "capistrano-deploy"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
# set :linked_files, %w{config/database.yml}
# set :linked_dirs,  %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :linked_files, fetch(:linked_files, []).push('config/database.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

# namespace :puma do
#   desc 'Create Directories for Puma Pids and Socket'
#   task :make_dirs do
#     on roles(:all) do
#       execute "mkdir #{shared_path}/tmp/sockets -p"
#       execute "mkdir #{shared_path}/tmp/pids -p"
#     end
#   end

#   before :start, :make_dirs
# end

namespace :deploy do

  %w[start stop restart].each do |command|
    desc "#{command} unicorn server"
    task command, roles: :all do
      run "/etc/init.d/unicorn_#{application} #{command}"
    end
  end

  # desc "Make sure local git is in sync with remote."
  # task :check_revision do
  #   on roles(:all) do
  #     unless `git rev-parse HEAD` == `git rev-parse origin/master`
  #       puts "WARNING: HEAD is not the same as origin/master"
  #       puts "=>>>>>>>>>>>>>>>>>>>>>>Run `git push` to sync changes."
  #       exit
  #     end
  #   end
  # end

  # desc 'Initial Deploy'
  # task :initial do
  #   on roles(:all) do
  #     before 'deploy:restart', 'puma:start'
  #     invoke 'deploy'
  #   end
  # end

  # desc 'Restart application'
  # task :restart do
  #   on roles(:all), in: :sequence do
  #     invoke 'puma:restart'
  #   end
  # end



  # # before :starting,     :check_revision
  # # before "deploy:assets:precompile", "bundle:install"
  # after :finishing, :precompile_aasets
  # after :finishing, :cleanup
  # after :finishing, :restart
  # # after  :finishing do
  # #   invoke 'deploy:assets:precompile'
  # # end
end

# ps aux | grep puma    # Get puma pid
# kill -s SIGUSR2 pid   # Restart puma
# kill -s SIGTERM pid   # Stop puma
