####################
# BEGIN:initial gems
####################

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

##############################################
# BEGIN: gems that take a long time to install
##############################################
# Please pre-install the proper versions in the Docker image.
gem 'nokogiri', '1.7.0'
gem 'pg', '0.18.4'
gem 'rails', '5.0.1'
############################################
# END: gems that take a long time to install
############################################

# BEGIN: SQLite
# NOTE: This section is automatically deleted by the pg_setup.rb script
group :development, :test do
  gem 'sqlite3'
end
# END: SQLite

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

## chaz #########
# this line throws a RuboCop error [Style/SymbolArray] as well as an error
# when running 'bundle install' because this isn't Windows.
# isn't going to be Windows while I'm running things, so it's geting commented.
#################
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

###################
# END: initial gems
###################

# BEGIN: gems used in test_code.sh script
group :development, :testing do
  gem 'brakeman' # Checks for security vulnerabilities
  gem 'bundler-audit' # Checks for vulnerable versions of gems
  gem 'gemsurance' # Checks for outdated and insecure gems
  gem 'rails_best_practices' # Checks the quality of Rails code, not recommended for legacy apps
  gem 'rubocop' # Checks for violations of the Ruby Style Guide, not recommended for legacy apps
  gem 'sandi_meter' # Checks for compliance with Sandi Metz' four rules
end
# END: gems used in test_code.sh script

# Minitest
gem 'minitest', require: :false, group: :testing
gem 'minitest-reporters', require: :false, group: :testing # Adds special features to tests

# BEGIN: Capybara (for integration testing)
group :test do
  gem 'capybara'
  gem 'capybara-email'
  gem 'capybara-slow_finder_errors'
end
# END: Capybara (for integration testing)
