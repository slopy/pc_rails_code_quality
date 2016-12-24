# frozen_string_literal: true
namespace :pc_reports do
  require 'rubocop/rake_task'

  # HTML
  RuboCop::RakeTask.new(:rubocop_html) do |tsk|
    tsk.options = ['-fhtml', '-opublic/reports/rubocop.html']
    tsk.fail_on_error = false
  end

  task :html do
    puts 'Generating html reports...'
    %w(rubocop_html).each { |task| Rake::Task["pc_reports:#{task}"].invoke }
  end
end
