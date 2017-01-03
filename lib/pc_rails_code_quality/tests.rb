# frozen_string_literal: true
module PcRailsCodeQuality
  # :nodoc:
  module Tests
    require 'simplecov'

    SimpleCov.start 'rails' do
      coverage_dir 'public/reports/simplecov'
    end

    require 'minitest/reporters'

    html_option = { output_filename: 'index.html',
                    reports_dir: "#{Rails.root}/public/reports/tests/" }
    html_reporter = Minitest::Reporters::HtmlReporter.new html_option
    Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new,
                              html_reporter]
  end
end
