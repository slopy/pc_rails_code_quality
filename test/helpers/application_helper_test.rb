# frozen_string_literal: true
require 'test_helper'

module PcRailsCodeQuality
  # :nodoc:
  class ApplicationHelper::Test < ActionView::TestCase
    include Engine.routes.url_helpers
    tests ApplicationHelper
    test 'Generate menu' do
      assert_includes code_quality_fixed_menu, '<ul'
      assert_includes code_quality_fixed_menu, '<li>'
      assert_includes code_quality_fixed_menu, 'Rubocop'
      assert_includes code_quality_fixed_menu, dev_rubocop_html_report_path
    end
  end
end
