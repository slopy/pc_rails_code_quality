# frozen_string_literal: true
namespace :pc_reports do
  require 'rubocop/rake_task'

  # HTML
  RuboCop::RakeTask.new(:rubocop_html) do |tsk|
    tsk.options = ['-fhtml', '-opublic/reports/rubocop.html']
    tsk.fail_on_error = false
  end

  task :rubycritic_html do
    sh 'rubycritic app lib -p public/reports/ruby_critic --no-browser --format html'
  end

  task :simplecov_html do
    Rake::Task["spec"].invoke if Rake::Task.task_defined?('spec')
    Rake::Task["test"].invoke if Rake::Task.task_defined?('test')
  end

  task :html do
    puts 'Generating html reports...'
    %w(rubocop_html rubycritic_html).each { |task| Rake::Task["pc_reports:#{task}"].invoke }
  end
end
