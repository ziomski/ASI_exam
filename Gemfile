source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

# Use sqlite3 as the database for Active Record
group :development, :test do
	gem 'sqlite3'
end

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'mini_magick', '3.5.0'
gem 'carrierwave-dropbox'

group :production do
   gem 'pg', '0.15.1'
   gem 'rails_12factor', '0.0.2'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0.beta'
end

#gem 'rspec-rails', :group => [:development, :test]
gem "factory_girl_rails", :group => [:development, :test]
gem "database_cleaner", :group => :test
gem "email_spec", :group => :test

gem 'bootstrap-generators', '~> 3.1.1'
gem 'will_paginate-bootstrap'