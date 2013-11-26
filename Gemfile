source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
gem "railties"
gem 'jquery-rails'
gem 'filepicker-rails'
gem 'counter_culture', '~> 0.1.18'

gem 'neat'
gem "haml-rails"
gem 'meta-tags', :require => 'meta_tags'
gem 'thin'
gem 'redcarpet', '1.17.2'
gem 'newrelic_rpm'
gem 'slim'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :development, :test do
  gem "rails-erd"
  gem 'sqlite3'
  gem 'rspec-rails', '~> 2.13.0'
  gem 'guard-rspec', '1.2.1'
  gem 'factory_girl_rails', '~> 4.2.1'
end

group :development do
  gem 'awesome_print', :require => 'ap'
  gem 'quiet_assets'
  gem 'better_errors'
  gem "letter_opener"
  gem 'pry'
  gem 'binding_of_caller'
  gem 'xray-rails'
  gem 'guard-spork', :github => 'guard/guard-spork'
  gem 'childprocess'
  gem 'spork', '0.9.2'
end

group :production do
   gem 'pg'
   gem 'rails_12factor'
end

group :test do
  gem 'simplecov', :require => false, :group => :test
  gem 'faker', '~> 1.1.2'
  gem 'capybara', '~> 2.0.2'
  gem 'database_cleaner', '~> 0.9.1'
  gem 'launchy', '~> 2.2.0'
  gem 'rb-fsevent', '0.9.1', :require => false
  gem 'growl', '1.0.3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end


# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

