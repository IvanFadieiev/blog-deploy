set :deploy_to, '/home/projects/simple_blog_capy'
set :rails_env, :production
set :branch, :master

server '104.131.95.23',
  roles: %w{web app db},
  ssh_options: {
    user: 'root'
  }
