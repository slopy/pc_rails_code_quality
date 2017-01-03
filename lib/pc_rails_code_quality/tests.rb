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

    if defined? RSpec

      class MyCustomHtmlFormatter < RSpec::Core::Formatters::HtmlFormatter
        # fully working RSpec 2 HTML formatter
      end

      config = RSpec.configuration

      # we want to use colored output for the console, right?
      config.color_enabled = true

      documentation_formatter = config.send(:built_in_formatter, :documentation).new(config.output)
      output_file = File.open("#{Rails.root}/public/reports/tests/index.html", "w")
      custom_formatter = MyCustomHtmlFormatter.new(output_file)
      reporter = RSpec::Core::Reporter.new(documentation_formatter, custom_formatter)

      config.instance_variable_set(:@reporter, reporter)
    end
  end
end
