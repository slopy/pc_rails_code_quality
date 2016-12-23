require_dependency "pc_rails_code_quality/application_controller"

module PcRailsCodeQuality
  class Dev::HtmlReportsController < ApplicationController
    
    def rubocop
    end

    def run_rubocop
      RuboCop::RakeTask.new(:rubocop_html) do |tsk|
        tsk.options = ['-fhtml','-opublic/reports/rubocop.html']
        tsk.fail_on_error = false
      end
    end   
  end
end
