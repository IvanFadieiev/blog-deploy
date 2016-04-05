set :deploy_to, '/home/alex/projects/simple_blog'
set :rails_env, :production
set :branch, :master

server '45.55.135.133',
  roles: %w{web app db},
  ssh_options: {
    user: 'alex'
  }
