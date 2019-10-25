# frozen_string_literal: true

require 'pry'
require 'humanize'

# Write your code for the 'Say' exercise in this file. Make the tests in
# `say_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/say` directory.

class Say
  def initialize(number)
    @number = number
  end

  def in_english
    raise ArgumentError if @number.negative? || @number >= 1_000_000_000_000

    @number.humanize(locale: :en).gsub(' and', '').delete(',')
  end
end

module Version
  VERSION = 1
end
