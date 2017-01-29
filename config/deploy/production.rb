set :deploy_to, '/home/deployer/blog'
set :rails_env, :production
set :branch, :master

server '192.168.0.103',
  roles: %w{web app db},
  ssh_options: {
    user: 'deployer'
  }
