set :deploy_to, '/home/alex/simple_blog'
set :rails_env, :production
set :branch, :master

server '104.236.112.173',
  roles: %w{web app db},
  ssh_options: {
    user: 'alex'
  }
