# frozen_string_literal: true

require 'pry'

class Garden
  PLANTS = { 'C' => :clover, 'G' => :grass, 'R' => :radishes, 'V' => :violets }.freeze
  DEFAULT_STUDENTS = %w[Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry].freeze

  def initialize(garden, students = DEFAULT_STUDENTS)
    @first_row, @second_row = garden.split("\n").map(&:chars)
    @students = students.map(&:downcase).map(&:to_sym).sort
  end

  def method_missing(name)
    @students.include?(name) ? plants[@students.index(name)].chars.map(&PLANTS) : super
  end

  private

  attr_reader :first_row, :second_row, :students

  def plants
    (first_row.zip second_row).each_slice(2).map { |first, second| (first.zip second).join }
  end
end

module Version
  VERSION = 1
end
