# frozen_string_literal: true
require 'test_helper'

module PcRailsCodeQuality
  module Dev
    class HtmlReportsControllerTest < ActionDispatch::IntegrationTest
      include Engine.routes.url_helpers

      teardown do
        FileUtils.rm_rf(Rails.root + 'public/reports')
      end

      test '#rubocop' do
        get dev_rubocop_html_report_path
        assert_response :success
      end

      test '#rubocop iframe' do
        get dev_rubocop_html_report_path
        assert_select 'iframe#rubocop-html-report'
        assert_select 'iframe#rubocop-html-report', src: /rubocop/
      end

      test '#run_rubocop' do
        get dev_run_rubocop_html_report_path
        assert File.open(Rails.root + 'public/reports/rubocop.html')
        assert_redirected_to dev_rubocop_html_report_path
      end

      test '#rubycritic' do
        get dev_rubycritic_html_report_path
        assert_response :success
      end

      test '#rubycritic iframe' do
        get dev_rubycritic_html_report_path
        assert_select 'iframe#rubycritic-html-report'
        assert_select 'iframe#rubycritic-html-report', src: /rubycritic/
      end

      test '#run_rubycritic' do
        get dev_run_rubycritic_html_report_path
        assert File.open(Rails.root + 'public/reports/ruby_critic/overview.html')
        assert_redirected_to dev_rubycritic_html_report_path
      end

      test '#simplecov' do
        get dev_simplecov_html_report_path
        assert_response :success
      end

      test '#simplecov iframe' do
        get dev_simplecov_html_report_path
        assert_select 'iframe#simplecov-html-report'
        assert_select 'iframe#simplecov-html-report', src: /simplecov/
      end

      test '#run_simplecov' do
        get dev_run_simplecov_html_report_path
        assert File.open(Rails.root + 'public/reports/simplecov/index.html')
        assert_redirected_to dev_simplecov_html_report_path
      end

      test '#tests' do
        get dev_tests_html_report_path
        assert_response :success
      end

      test '#tests iframe' do
        get dev_tests_html_report_path
        assert_select 'iframe#tests-html-report'
        assert_select 'iframe#tests-html-report', src: /tests/
      end

      test '#run_tests' do
        get dev_run_tests_html_report_path
        assert File.open(Rails.root + 'public/reports/tests/index.html')
        assert_redirected_to dev_tests_html_report_path
      end
      
      test '#rails_best_practices' do
        get dev_rails_best_practices_html_report_path
        assert_response :success
      end

      test '#rails_best_practices iframe' do
        get dev_rails_best_practices_html_report_path
        assert_select 'iframe#rails_best_practices-html-report'
        assert_select 'iframe#rails_best_practices-html-report', src: /rails_best_practices/
      end

      test '#run_rails_best_practices' do
        get dev_run_rails_best_practices_html_report_path
        assert File.open(Rails.root + 'public/reports/rails_best_practices.html')
        assert_redirected_to dev_rails_best_practices_html_report_path
      end

      test '#brakeman' do
        get dev_brakeman_html_report_path
        assert_response :success
      end

      test '#brakeman iframe' do
        get dev_brakeman_html_report_path
        assert_select 'iframe#brakeman-html-report'
        assert_select 'iframe#brakeman-html-report', src: /brakeman/
      end

      test '#run_brakeman' do
        get dev_run_brakeman_html_report_path
        assert File.open(Rails.root + 'public/reports/brakeman.html')
        assert_redirected_to dev_brakeman_html_report_path
      end
    end
  end
end
