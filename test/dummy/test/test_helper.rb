# frozen_string_literal: true
# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require "pc_rails_code_quality/simplecov"

class ActiveSupport::TestCase
  include ActionDispatch::TestProcess
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # Add more helper methods to be used by all tests here...
end
