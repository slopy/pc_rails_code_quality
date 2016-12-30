# frozen_string_literal: true
module PcRailsCodeQuality
  # :nodoc:
  class Analysis
    def self.run_html_reports
      run_rubocop_html_report
      run_rubycritic_html_report
      run_simplecov_html_report
      true
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

    def self.run_simplecov_html_report
      require 'rake'
      Rake::Task.clear
      Rails.application.load_tasks
      if Rake::Task.task_defined?('pc_reports:simplecov_html')
        @task = Rake::Task['pc_reports:simplecov_html'].to_s 
      end
      system("bundle exec rake #{@task}") if @task
    end
  end
end
