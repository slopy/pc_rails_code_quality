# frozen_string_literal: true
require 'test_helper'

module PcRailsCodeQuality
  module Dev
    class HtmlReportsControllerTest < ActionDispatch::IntegrationTest
      include Engine.routes.url_helpers

      test '#rubocop' do
        get dev_rubocop_html_report_path
        assert_response :success
      end

      test '#rubocop iframe' do
        get dev_rubocop_html_report_path
        assert_select 'iframe#rubocop-html-report'
        assert_select 'iframe#rubocop-html-report', href: /rubocop/
      end

      test '#run_rubocop' do
        get dev_run_rubocop_html_report_path
        assert_redirected_to dev_rubocop_html_report_path
      end

      test '#rubycritic' do
        get dev_rubycritic_html_report_path
        assert_response :success
      end

      test '#rubycritic iframe' do
        get dev_rubycritic_html_report_path
        assert_select 'iframe#rubycritic-html-report'
        assert_select 'iframe#rubycritic-html-report', href: /rubycritic/
      end

      test '#run_rubycritic' do
        get dev_run_rubycritic_html_report_path
        assert_redirected_to dev_rubycritic_html_report_path
      end

      test '#simplecov' do
        get dev_simplecov_html_report_path
        assert_response :success
      end

      test '#simplecov iframe' do
        get dev_simplecov_html_report_path
        assert_select 'iframe#simplecov-html-report'
        assert_select 'iframe#simplecov-html-report', href: /simplecov/
      end

      test '#run_simplecov' do
        get dev_run_simplecov_html_report_path
        assert_redirected_to dev_simplecov_html_report_path
      end

      test '#rails_best_practices' do
        get dev_rails_best_practices_html_report_path
        assert_response :success
      end

      test '#rails_best_practices iframe' do
        get dev_rails_best_practices_html_report_path
        assert_select 'iframe#rails_best_practices-html-report'
        assert_select 'iframe#rails_best_practices-html-report', href: /simplecov/
      end

      test '#run_rails_best_practices' do
        get dev_run_rails_best_practices_html_report_path
        assert_redirected_to dev_rails_best_practices_html_report_path
      end
    end
  end
end
