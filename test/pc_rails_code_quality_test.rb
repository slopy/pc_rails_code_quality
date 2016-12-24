require 'test_helper'
# rubocop:disable Style/ClassAndModuleChildren
class PcRailsCodeQuality::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, PcRailsCodeQuality
  end
end
