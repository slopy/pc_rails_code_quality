# frozen_string_literal: true
require 'test_helper'
class PcRailsCodeQuality::Analysis::Test < ActiveSupport::TestCase
  test '#run_html_reports' do
    assert_respond_to(PcRailsCodeQuality::Analysis, :run_html_reports)
  end

  test '#run_rubocop_html_report' do
    assert_respond_to(PcRailsCodeQuality::Analysis, :run_rubocop_html_report)
  end

  test '#run_rubycritic_html_report' do
    assert_respond_to(PcRailsCodeQuality::Analysis, :run_rubycritic_html_report)
  end

  test '#run_simplecov_html_report' do
    assert_respond_to(PcRailsCodeQuality::Analysis, :run_simplecov_html_report)
  end

  test '#run_rails_best_practices_html' do
    assert_respond_to(PcRailsCodeQuality::Analysis, :run_rails_best_practices_html_report)
  end

  test '#run_brakeman_html_report' do
    assert_respond_to(PcRailsCodeQuality::Analysis, :run_brakeman_html_report)
  end
end
