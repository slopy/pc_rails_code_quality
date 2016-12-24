# frozen_string_literal: true
require 'test_helper'
class PcRailsCodeQuality::Analysis::Test < ActiveSupport::TestCase
  test '#run_rubocop_html_report generate a file' do
    PcRailsCodeQuality::Analysis.run_rubocop_html_report
    assert File.open('public/reports/rubocop.html')
  end
end
