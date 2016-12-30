# frozen_string_literal: true
PcRailsCodeQuality::Engine.routes.draw do
  namespace :dev do
    get 'html_reports/rubocop', as: :rubocop_html_report
    get 'html_reports/run_rubocop', as: :run_rubocop_html_report
    get 'html_reports/rubycritic', as: :rubycritic_html_report
    get 'html_reports/run_rubycritic', as: :run_rubycritic_html_report
    get 'html_reports/simplecov', as: :simplecov_html_report
    get 'html_reports/run_simplecov', as: :run_simplecov_html_report
  end
end
