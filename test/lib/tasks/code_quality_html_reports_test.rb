# frozen_string_literal: true
require 'test_helper'
class CodeQualityHtmlReportsRakeTaskTest < ActiveSupport::TestCase
  setup do
    require 'rake'
    Rake::Task.define_task :environment
    Rails.application.load_tasks
  end

  teardown do
    Rake::Task.clear
    FileUtils.rm_rf(Rails.root + 'public/reports')
  end

  test 'rake pc_reports:html is generating reports' do
    Rake::Task['pc_reports:html'].reenable
    Rake::Task['pc_reports:html'].invoke
    assert File.exist?(Rails.root + 'public/reports/rubocop.html')
    assert File.exist?(Rails.root + 'public/reports/ruby_critic/overview.html')
    assert File.exist?(Rails.root + 'public/reports/tests/index.html')
    assert File.exist?(Rails.root + 'public/reports/rails_best_practices.html')
    assert File.exist?(Rails.root + 'public/reports/simplecov/index.html')
    assert File.exist?(Rails.root + 'public/reports/brakeman.html')
  end
end
