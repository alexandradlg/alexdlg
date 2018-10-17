source 'https://rubygems.org'

# authentification
# gem 'pundit'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails'
gem 'dotenv'
gem 'faker'
gem 'jbuilder'
gem 'jquery'
gem 'jquery-rails'
gem 'money-rails', '~>1'
gem 'puma'
gem 'rails'
gem 'rest-client'
gem 'sass-rails'
gem 'turbolinks'
gem 'uglifier'

group :development, :test do
  gem 'byebug', '9.0.6', platform: :mri
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.8'
  gem 'rubocop', require: false
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'sqlite3'
end

group :development do
  gem 'annotate'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'letter_opener'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'poltergeist'
end

group :production do
  gem 'pg', '0.20.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
ruby File.read('./.ruby-version')
