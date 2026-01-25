source 'https://rubygems.org'

# Ruby version
ruby '3.3.9'

# Rails
gem 'rails', '~> 7.2.3'

# Database
gem 'sqlite3', '~> 1.4'

# Web server
gem 'puma', '>= 5.0'

# Assets & JS
gem 'sassc-rails'            # déplacé hors du groupe pour production + compilation
gem 'sprockets-rails'
gem 'terser', '>= 1.0.0'     # minifie JS
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'

# API / JSON
gem 'jbuilder'

# Windows support
gem 'tzinfo-data', platforms: %i[ windows jruby ]

# Boot performance
gem 'bootsnap', require: false

# Testing
gem 'minitest', '~> 5.27'

group :development, :test do
  gem 'debug', platforms: %i[ mri windows ]
end

group :development do
  gem 'web-console'
  gem 'spring'
  gem 'error_highlight', '>= 0.4.0', platforms: [:ruby]
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end

# Security check
gem 'brakeman', '~> 7.1', group: :development
