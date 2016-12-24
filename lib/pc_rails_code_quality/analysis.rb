# frozen_string_literal: true
module PcRailsCodeQuality
  # :nodoc:
  class Analysis
    def self.run_html_reports
      run_rubocop
    end

    def self.run_rubocop_html_report
      require 'rubocop'
      options = %w(-fhtml -opublic/reports/rubocop.html)
      RuboCop::CLI.new.run(options)
    end
  end
end
