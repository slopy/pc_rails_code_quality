# frozen_string_literal: true
require 'test_helper'
# :nodoc:
class PcRailsCodeQuality::Test < ActiveSupport::TestCase
  test 'truth' do
    assert_kind_of Module, PcRailsCodeQuality
  end

  test 'Version' do
    assert_kind_of String, PcRailsCodeQuality::VERSION
  end
end
