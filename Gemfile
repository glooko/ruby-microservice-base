source "https://rubygems.org"
ruby '3.1.2'

gem "hanami", "~> 2.0.0.beta3"
gem "hanami-router", "~> 2.0.0.beta2"
gem "hanami-controller", "~> 2.0.0.beta1"
gem "hanami-validations", "~> 2.0.0.beta1"
gem 'hanami-utils', "~> 2.0.0.beta1"
gem 'mongoid', '~> 8.0', '>= 8.0.2'
gem 'swagger-blocks', '~> 3.0'
gem 'alba', '~> 1.6'
gem 'oj'
gem 'rack-cors'
gem 'rubocop', require: false
gem 'rubocop-rspec', require: false
gem "dry-types"
gem "puma"
gem "rake"
gem "json"

group :development, :test do
  gem "dotenv"
  gem 'guard-rspec'
end

group :cli, :development do
  gem "hanami-reloader"
end

group :cli, :development, :test do
  gem "hanami-rspec"
end

group :development do
  gem "guard-puma"
end

group :test do
  gem "rack-test"
  gem 'rspec', '~> 3.11'
  gem 'rspec-mocks'
  gem 'mongoid-rspec', '~> 4.1'
  gem 'simplecov', '~> 0.21.2', require: false
  gem 'timecop', '~> 0.9.5'
  gem 'capybara', '~> 3.37.1'
end
