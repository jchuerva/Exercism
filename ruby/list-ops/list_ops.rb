# frozen_string_literal: true

class ListOps
  def self.arrays(list)
    list.size
  end

  def self.reverser(list)
    list.reverse
  end

  def self.concatter(*args)
    # args.map(&list) { |list| list }.inject(:+)
    args.map.inject(:+)
  end

  def self.mapper(list)
    list.map { |elem| yield(elem) }
  end

  def self.filterer(list)
    list.select { |elem| yield(elem) }
  end

  def self.sum_reducer(list)
    list.sum
  end

  def self.factorial_reducer(list)
    return 1 if list.empty?

    list.inject(:*)
  end
end

module Version
  VERSION = 1
end
