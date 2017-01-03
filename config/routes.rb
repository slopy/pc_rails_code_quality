# frozen_string_literal: true
PcRailsCodeQuality::Engine.routes.draw do
  namespace :dev do
    get 'html_reports/rubocop', as: :rubocop_html_report
    get 'html_reports/run_rubocop', as: :run_rubocop_html_report
    get 'html_reports/rubycritic', as: :rubycritic_html_report
    get 'html_reports/run_rubycritic', as: :run_rubycritic_html_report
    get 'html_reports/simplecov', as: :simplecov_html_report
    get 'html_reports/run_simplecov', as: :run_simplecov_html_report
    get 'html_reports/rails_best_practices', as: :rails_best_practices_html_report
    get 'html_reports/run_rails_best_practices', as: :run_rails_best_practices_html_report
    get 'html_reports/brakeman', as: :brakeman_html_report
    get 'html_reports/run_brakeman', as: :run_brakeman_html_report
  end
end
