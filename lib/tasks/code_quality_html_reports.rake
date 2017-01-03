# frozen_string_literal: true
namespace :pc_reports do
  require 'rubocop/rake_task'

  # HTML
  RuboCop::RakeTask.new(:rubocop_html) do |tsk|
    puts 'Running rubocop_html'
    tsk.options = ['-fhtml', '-opublic/reports/rubocop.html']
    tsk.fail_on_error = false
  end

  task :rubycritic_html do
    puts 'Running rubycritic_html'
    sh 'rubycritic app lib -p public/reports/ruby_critic --no-browser --format html'
  end

  task :simplecov_html do
    puts 'Running simplecov_html'
    sh "cd #{Rails.root} && RAILS_ENV=test bundle exec rake test"
    sh "cd #{Rails.root} && RAILS_ENV=test bundle exec rake spec" if defined?(RSpec)
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
    tasks = %w(rubocop_html rubycritic_html rails_best_practices_html simplecov_html brakeman_html)
    tasks.each { |task| Rake::Task["pc_reports:#{task}"].invoke }
  end
end
