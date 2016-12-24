require 'test_helper'

module PcRailsCodeQuality
  class Dev::HtmlReportsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "#rubocop" do
      get dev_rubocop_html_report_path
      assert_response :success
    end

    test "#rubocop iframe" do
      get dev_rubocop_html_report_path
      assert_select 'iframe#rubocop-html-report'
      assert_select 'iframe#rubocop-html-report', href: /rubocop/
    end

    test "#run_rubocop" do
      get dev_run_rubocop_html_report_path
      assert_redirected_to dev_rubocop_html_report_path
    end
  end
end
