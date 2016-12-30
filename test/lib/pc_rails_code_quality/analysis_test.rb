# frozen_string_literal: true
require 'test_helper'
class PcRailsCodeQuality::Analysis::Test < ActiveSupport::TestCase
  
  teardown do
    FileUtils.rm_rf('public')
    FileUtils.rm_rf(Rails.root + 'public/reports')
  end

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

  # PcRailsCodeQuality::Analysis.run_rubycritic_html_report
  # is running rake test on engine so it going in to loop 
  test '#run_simplecov_html_report generate a file based on rake task' do
    `cd test/dummy/ && bundle exec rake pc_reports:simplecov_html`
    assert File.open(Rails.root + 'public/reports/simplecov/index.html')
  end
end
