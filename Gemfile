source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '3.2.18'
gem 'omniauth-twitter'
gem 'twitter'
gem 'will_paginate', '~> 3.0'
gem 'bluecloth'

# Boostrap, with the Rails 4 pipeline backport
gem 'bootstrap-sass', '~> 3.1.1'
gem 'sprockets-rails', '=2.0.0.backport1'
gem 'sprockets', '=2.2.2.backport2'
gem 'sass-rails', github: 'guilleiguaran/sass-rails', branch: 'backport'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
end

group :production do
  # Heroku uses postgres and 12factor logging
  gem 'pg'
  gem 'rails_12factor'

  # Use unicorn as the app server
  gem 'unicorn'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Deploy with Capistrano
# gem 'capistrano'
