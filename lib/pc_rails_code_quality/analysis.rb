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
      `bundle exec rake pc_reports:simplecov_html` if Rake::Task.task_defined?('pc_reports:simplecov_html')
    end

    def self.run_rails_best_practices_html_report
      require 'rails_best_practices'
      FileUtils.mkdir_p('public/reports') unless File.directory?('public/reports')
      options = { 'format' => 'html',
                  'output-file' => 'public/reports/rails_best_practices.html',
                  'exclude' => ['db/migrate', 'vendor'] }
      analyzer = RailsBestPractices::Analyzer.new(Rails.root, options)
      my_default_config = PcRailsCodeQuality::Engine.root.to_s + '/config/rails_best_practices.yml'
      analyzer.class::DEFAULT_CONFIG.replace my_default_config
      analyzer.generate
      analyzer.analyze
      analyzer.output
    end
  end
end
