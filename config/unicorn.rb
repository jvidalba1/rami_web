root = "/car/www/rami_web/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.rami_web.sock"
worker_processes 2
timeout 30

# Force the bundler gemfile environment variable to
# reference the capistrano "current" symlink
before_exec do |_|
  ENV["BUNDLE_GEMFILE"] = File.join(root, 'Gemfile')
end
##########################################################
# # Set the working application directory
# # working_directory "/path/to/your/app"
# working_directory "/var/www/rami_web"

# # Unicorn PID file location
# # pid "/path/to/pids/unicorn.pid"
# pid "/var/www/rami_web/pids/unicorn.pid"

# # Path to logs
# # stderr_path "/path/to/log/unicorn.log"
# # stdout_path "/path/to/log/unicorn.log"
# stderr_path "/var/www/rami_web/log/unicorn.log"
# stdout_path "/var/www/rami_web/log/unicorn.log"

# # Unicorn socket
# listen "/tmp/unicorn.rami_web.sock"
# # listen "/tmp/unicorn.myapp.sock"

# # Number of processes
# # worker_processes 4
# worker_processes 2

# # Time-out
# timeout 30
#############################################################
# corn.rb
# worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
# timeout 15
# preload_app true

# before_fork do |server, worker|
#     Signal.trap 'TERM' do
#           puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
#               Process.kill 'QUIT', Process.pid
#                 end

#       defined?(ActiveRecord::Base) and
#           ActiveRecord::Base.connection.disconnect!
# end

# after_fork do |server, worker|
#     Signal.trap 'TERM' do
#           puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
#             end

#       defined?(ActiveRecord::Base) and
#           ActiveRecord::Base.establish_connection
# end
