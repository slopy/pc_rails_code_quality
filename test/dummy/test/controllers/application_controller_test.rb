require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test 'truth' do
    assert_kind_of Class, ApplicationController
  end
end