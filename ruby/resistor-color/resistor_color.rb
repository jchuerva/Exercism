# frozen_string_literal: true

require 'pry'

class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.color_code(input)
    COLORS.index(input)
  end
end

module Version
  VERSION = 1
end
