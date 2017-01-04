# frozen_string_literal: false
module PcRailsCodeQuality
  # :nodoc:
  module ApplicationHelper
    def code_quality_fixed_menu
      tools = [
        rubocop_link, rails_best_practices_link, rubycritic_link,
        tests_link, simplecov_link, brakeman_link
      ]
      content_tag :ul, class: 'code-quality-nav' do
        tools.collect do |tool|
          concat nav_item_active_if { concat tool }
        end
      end
    end

    def rubocop_link
      link_to 'Rubocop', dev_rubocop_html_report_path, default_navigation_options
    end

    def rails_best_practices_link
      link_to 'RailsBestPractices', dev_rails_best_practices_html_report_path, default_navigation_options
    end

    def rubycritic_link
      link_to 'RubyCritic', dev_rubycritic_html_report_path, default_navigation_options
    end

    def tests_link
      link_to 'Tests', dev_tests_html_report_path, default_navigation_options
    end

    def simplecov_link
      link_to 'SimpleCov', dev_simplecov_html_report_path, default_navigation_options
    end

    def brakeman_link
      link_to 'Brakeman', dev_brakeman_html_report_path, default_navigation_options
    end

    private

    def nav_item_active_if(attributes = {}, &block)
      content_tag(:li, attributes, &block)
    end

    def default_navigation_options
      { class: 'tool code-quality-button' }
    end
  end
end
