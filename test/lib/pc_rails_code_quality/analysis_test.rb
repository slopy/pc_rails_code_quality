# frozen_string_literal: true
require 'test_helper'
class PcRailsCodeQuality::Analysis::Test < ActiveSupport::TestCase

  test '#run_html_reports' do
    assert_send([PcRailsCodeQuality::Analysis, :run_html_reports])
  end

  test '#run_rubocop_html_report generate a file' do
    PcRailsCodeQuality::Analysis.run_rubocop_html_report
    assert File.open('public/reports/rubocop.html')
  end
  
  test '#run_rubycritic_html_report generate a file' do
    PcRailsCodeQuality::Analysis.run_rubycritic_html_report
    assert File.open('public/reports/ruby_critic/overview.html')
  end

  # ToDo - wirte some test for this one
  # test '#run_simplecov_html_report generate a file' do
  #   PcRailsCodeQuality::Analysis.run_simplecov_html_report
  #   assert File.open('public/reports/simplecov/index.html')
  # end
end
