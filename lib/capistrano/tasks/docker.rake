namespace :docker do
  desc "build docker containers"
  task :build do
    on roles(:all) do |host|
      execute "cd #{release_path.to_s} && docker-compose build"
    end
  end
  
  desc "up docker containers"
  task :up do
    on roles(:all) do |host|
      execute "cd #{release_path.to_s} && docker-compose up -d"
    end
  end

  desc "logs docker containers"
  task :logs do
    on roles(:all) do |host|
      execute "cd #{release_path.to_s} && docker-compose logs"
    end
  end

  desc "run docker containers"
  task :run do
    on roles(:all) do |host|
      p ARGV[2..-1].join(" ")
      command = ARGV[2..-1].join(" ")
      execute "cd #{release_path.to_s} && docker-compose run #{command}"
    end
  end

  desc "restart docker containers"
  task :restart do
    on roles(:all) do |host|
      execute "cd #{release_path.to_s} && docker-compose restart"
    end
  end

end
