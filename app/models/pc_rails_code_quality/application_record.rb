# frozen_string_literal: true
module PcRailsCodeQuality
  # :nodoc:
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
