require_dependency "pc_rails_code_quality/application_controller"

module PcRailsCodeQuality
  class Dev::HtmlReportsController < ApplicationController

    def rubocop
    end

    def run_rubocop
      PcRailsCodeQuality::Analysis.run_rubocop_html_report
      redirect_to dev_rubocop_html_report_path
    end   
  end
end
