source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'
gem 'rails', '~> 5.2.2'
gem 'puma', '~> 3.11'
gem 'jquery-rails', '~> 4.1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'uglifier', '~> 2.7', '>= 2.7.2'

group :production do
  gem 'pg', '~> 1.1.4'
end

group :development, :test do
  gem 'sqlite3', '~> 1.3.6'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'valid_email2'