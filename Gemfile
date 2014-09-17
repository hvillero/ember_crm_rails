source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'active_model_serializers'
gem 'ember-rails'
gem 'ember-source'
gem 'emblem-rails'
gem 'puma'

# Use ActiveModel has_secure_password
#gem 'bcrypt', '~> 3.1.7'

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'simplecov'
  gem 'shoulda'
end

group :development do
  gem 'pry'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'byebug'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'rspec-mocks'
  gem 'database_cleaner', require: false
  gem 'timecop', require: false
  gem 'spring-commands-rspec'
  gem 'ffaker'
end

gem 'factory_girl_rails', :group => [:test, :development], require: false
gem 'lorem-ipsum', :group => [:test, :development]
gem 'response_code_matchers', :group => [:test], require: false

gem 'rails_12factor', group: :production


# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

