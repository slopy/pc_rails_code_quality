# frozen_string_literal: true
module PcRailsCodeQuality
  # :nodoc:
  module Simplecov
    require "simplecov"

    SimpleCov.start 'rails' do
      coverage_dir 'public/reports/simplecov'
    end
  end
end