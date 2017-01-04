# frozen_string_literal: true
namespace :pc_reports do
  require 'rubocop/rake_task'

  # HTML
  task :rubocop_html do
    puts 'Running rubocop_html'
    PcRailsCodeQuality::Analysis.run_rubocop_html_report
  end

  task :rubycritic_html do
    puts 'Running rubycritic_html'
    PcRailsCodeQuality::Analysis.run_rubycritic_html_report
  end

  task :simplecov_html do
    puts 'Running simplecov_html'
    PcRailsCodeQuality::Analysis.run_simplecov_html_report
  end

  task :rails_best_practices_html do
    puts 'Running rails_best_practices_html'
    PcRailsCodeQuality::Analysis.run_rails_best_practices_html_report
  end

  task :brakeman_html do
    puts 'Running brakeman_html'
    PcRailsCodeQuality::Analysis.run_brakeman_html_report
  end

  task :html do
    puts 'Generating html reports...'
    tasks = %w(simplecov_html rubocop_html rubycritic_html rails_best_practices_html brakeman_html)
    tasks.each do |task|
      Rake::Task["pc_reports:#{task}"].reenable
      Rake::Task["pc_reports:#{task}"].invoke
    end
  end
end
