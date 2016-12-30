# frozen_string_literal: true
source 'https://rubygems.org'

# Declare your gem's dependencies in pc_rails_code_quality.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
gem 'byebug', group: [:development, :test]
gem 'pry-rails', group: [:development, :test]

group :test do
  gem 'codeclimate-test-reporter', '~> 1.0.0'
  gem 'simplecov'
  gem 'sqlite3'
end
