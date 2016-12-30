# frozen_string_literal: true
require_dependency 'pc_rails_code_quality/application_controller'

module PcRailsCodeQuality
  module Dev
    # :nodoc:
    class HtmlReportsController < ApplicationController
      def rubocop; end

      def rubycritic; end

      def simplecov; end

      def run_rubocop
        PcRailsCodeQuality::Analysis.run_rubocop_html_report
        redirect_to dev_rubocop_html_report_path
      end

      def run_rubycritic
        PcRailsCodeQuality::Analysis.run_rubycritic_html_report
        redirect_to dev_rubycritic_html_report_path
      end

      def run_simplecov
        PcRailsCodeQuality::Analysis.run_simplecov_html_report
        redirect_to dev_simplecov_html_report_path
      end
    end
  end
end
