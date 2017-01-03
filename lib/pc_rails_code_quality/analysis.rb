# frozen_string_literal: true
module PcRailsCodeQuality
  # :nodoc:
  class Analysis
    # Run all reports
    def self.run_html_reports
      run_rubocop_html_report
      run_rubycritic_html_report
      run_rails_best_practices_html_report
      run_simplecov_html_report
      run_brakeman_html_report
      true
    end

    def self.run_rubocop_html_report
      require 'rubocop'
      rubocop = RuboCop::CLI.new
      options = []
      options.push '-fhtml'
      options.push "-o#{Rails.root}/public/reports/rubocop.html"
      options.push Rails.root.to_s
      rubocop.run(options)
    end

    def self.run_rubycritic_html_report
      require 'rubycritic/cli/application'
      arguments = %W(app lib -p #{Rails.root}/public/reports/ruby_critic --no-browser --format html)
      RubyCritic::Cli::Application.new(arguments).execute
    end

    def self.run_simplecov_html_report
      Rake::Task.clear
      Rails.application.load_tasks
      if Rake::Task.task_defined?('app:pc_reports:simplecov_html')
        Rake::Task['app:pc_reports:simplecov_html'].invoke
      elsif Rake::Task.task_defined?('pc_reports:simplecov_html')
        Rake::Task['pc_reports:simplecov_html'].invoke
      end
    end

    def self.run_rails_best_practices_html_report
      require 'rails_best_practices'
      FileUtils.mkdir_p("#{Rails.root}/public/reports")
      options = { 'format' => 'html',
                  'output-file' => "#{Rails.root}/public/reports/rails_best_practices.html",
                  'exclude' => ['db/migrate', 'vendor'] }
      analyzer = RailsBestPractices::Analyzer.new(Rails.root.to_s, options)
      my_default_config = PcRailsCodeQuality::Engine.root.to_s + '/config/rails_best_practices.yml'
      analyzer.class::DEFAULT_CONFIG.replace my_default_config
      analyzer.generate
      analyzer.analyze
      analyzer.output
    end

    def self.run_brakeman_html_report
      require 'brakeman'
      options = {
        app_path: Rails.root.to_s,
        print_report: true,
        output_files: ["#{Rails.root}/public/reports/brakeman.html"]
      }
      Brakeman.run options
    end
  end
end
