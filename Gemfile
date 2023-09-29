source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.4'

gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem 'pry', '~> 0.13.1'
gem 'pry-rails'
# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

# Added Gems 
gem "devise"

gem "pundit"
gem 'pg', '~> 1.1'

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"
gem 'faker'#, :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'

gem 'mini_magick'



# gem "ruby-vips"



group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  #Added rspec
  gem 'rspec-rails', '~> 5.1', '>= 5.1.2'
  # gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
end

group :test do
    gem 'shoulda-matchers', '~> 5.0'
end

group :production do
#  gem "pg", "~> 1.1"
end


group :development do
  gem "web-console"

end

gem "sidekiq", "~> 7.0"

gem "bundler-audit", "~> 0.9.1"
