set :deploy_to, '/home/deploy/blog'
set :rails_env, :production
set :branch, :master

server '46.101.181.91',
  roles: %w{web app db},
  ssh_options: {
    user: 'deploy'
  }
