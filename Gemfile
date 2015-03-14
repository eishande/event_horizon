source "https://rubygems.org"

ruby "2.1.5"

gem "rails", "4.1.4"

gem "pg"
gem "sass-rails", "~> 4.0.3"
gem "uglifier", ">= 1.3.0"
gem "jquery-rails"
gem "haml-rails"
gem "foundation-rails"
gem "omniauth-github"
gem "omniauth-launch-pass",
  github: 'launchacademy/omniauth-launch-pass'
  #path: '../omniauth-launch-pass'

gem "redcarpet"
gem "rouge"
gem "sanitize"
gem "unicorn"
gem "jbuilder"
gem "carrierwave"
gem "fog"
gem "sidekiq"
gem "newrelic_rpm"
gem "flowdock"
gem "google-api-client"
gem "redis"
gem 'draper', '~> 1.3'
gem 'httparty'
gem 'airbrake'
gem 'kaminari'

group :development do
  gem "spring"
  gem "quiet_assets"
end

group :development, :test do
  gem "rspec-rails"
  gem "capybara"
  gem "factory_girl"
  gem "pry-rails"
  gem "vcr"
  gem "shoulda-matchers"
  gem "dotenv-rails"
  gem 'launchcop'
  gem "fuubar"
  gem "valid_attribute"
end

group :test do
  gem "valid_attribute"
  gem "coveralls", require: false
  gem "launchy", require: false
  gem "mocha", require: false
  gem "webmock"
  gem "database_cleaner"
end

group :production do
  gem "rails_12factor"
end
