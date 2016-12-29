# frozen_string_literal: true
module PcRailsCodeQuality
  # :nodoc:
  class Analysis
    def self.run_html_reports
      run_rubocop_html_report
      run_rubycritic_html_report
    end

    def self.run_rubocop_html_report
      require 'rubocop'
      options = %w(-fhtml -opublic/reports/rubocop.html)
      RuboCop::CLI.new.run(options)
    end

    def self.run_rubycritic_html_report
      require 'rubycritic/cli/application'
      arguments = %w(app lib -p public/reports/ruby_critic --no-browser --format html)
      RubyCritic::Cli::Application.new(arguments).execute
    end
  end
end
