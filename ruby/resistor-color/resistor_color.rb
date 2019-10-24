# frozen_string_literal: true

require 'pry'

class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  class << self
    def color_code(input)
      COLORS.index(input)
    end
  end
end

module Version
  VERSION = 2
end
