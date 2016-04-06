set :deploy_to, '/home/alex/simple_blog'
set :rails_env, :production
set :branch, :master

server '45.55.212.137',
  roles: %w{web app db},
  ssh_options: {
    user: 'alex'
  }
