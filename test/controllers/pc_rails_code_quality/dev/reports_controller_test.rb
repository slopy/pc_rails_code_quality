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
    end
  end
end
