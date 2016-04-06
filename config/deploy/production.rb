set :deploy_to, '/home/alex/simple_blog'
set :rails_env, :production
set :branch, :master

server '104.236.211.133',
  roles: %w{web app db},
  ssh_options: {
    user: 'alex'
  }
