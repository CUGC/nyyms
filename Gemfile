source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
gem 'devise', '>= 2.1'
gem 'thin'
gem 'cornell_ldap', '>= 1.4.0'
gem 'cornell_netid', '>= 1.1.0'
gem 'exception_notification', :require => 'exception_notifier'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'jquery-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'compass-rails', '~> 1.0.3'
  gem 'compass-cornell-plugin', '~> 0.2.1'

  gem 'uglifier', '>= 1.0.3'
end

group :test, :development do
  gem "rspec-rails", "~> 2.0"
  gem "factory_girl" if RUBY_VERSION >= "1.9.2"
  gem "brakeman", "~> 1.7.0"
end

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
