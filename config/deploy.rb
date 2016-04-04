# config valid only for current version of Capistrano
lock '3.4.0'

set :rvm_ruby_version, '2.3.0@rails426'

set :application, 'simple_blog_capy'

set :repo_url, 'git@github.com:AlexStepanenko/simple_blog_capy.git'

set :scm, :git

set :linked_files, %w{config/database.yml config/secrets.yml}

set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets public/system}

set :keep_releases, 5

set :config_files, 'nginx.conf'

set :symlinks, [{
  source: 'nginx.conf',
  link: "/etc/nginx/sites-enabled/#{fetch(:application)}"
}]

after 'deploy:publishing', 'deploy:restart'

namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
