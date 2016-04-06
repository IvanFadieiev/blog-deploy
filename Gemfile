source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'

# Use postgresql as the database for Active Record
gem 'pg', '0.18.4'

# Use SCSS for stylesheets
gem 'sass-rails', '5.0.4'

# Sass-powered version of Bootstrap 3
gem 'bootstrap-sass', '3.3.6'

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.1.1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '3.0.0'

# provides a simple wrapper for safely handling passwords
gem 'bcrypt-ruby', '3.1.5'

group :poduction do
  # Use the Unicorn app server
  gem 'unicorn', '5.1.0'
end

group :development do
  # An IRB alternative and runtime developer console
  gem 'pry', '0.10.3'

  # for executing commands in parallel on multiple remote machines
  gem 'capistrano', '3.4.0'

  gem 'capistrano-rvm', '0.1.2'

  # rails specific capistrano funcitons
  gem 'capistrano-rails', '1.1.6'

  # integrate bundler with capistrano
  gem 'capistrano-bundler', '1.1.4'

  # Capistrano 3.x plugin that integrates Unicorn server tasks
  gem 'capistrano3-unicorn', '0.2.1'
end
