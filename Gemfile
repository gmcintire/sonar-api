source 'https://rubygems.org'

gem 'rake'

group :development do
  gem 'awesome_print', :require => 'ap'
  gem 'guard-rspec', '~> 4.5'
  gem 'pry'
end

group :test do
  gem 'multi_json', '~> 1.11.0'
  gem 'mime-types', '< 2.0.0'
  gem 'netrc', '~> 0.7.7'
  gem 'rb-fsevent', '~> 0.9'
  gem 'rspec', '~> 3.0.0'
  gem 'simplecov', :require => false
  gem 'vcr', '~> 2.9.2'
  gem 'webmock', '>= 1.9'
end

platforms :rbx do
  gem 'psych'
  gem 'rubysl', '~> 2.0'
end

gemspec
