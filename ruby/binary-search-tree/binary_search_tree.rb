# Bst class comment
class Bst
  attr_accessor :data, :left, :right

  def initialize(ini_data)
    @data = ini_data
  end

  def insert(new_data)
    if new_data > data
      @right ? @right.insert(new_data) : @right = Bst.new(new_data)
    else
      @left ? @left.insert(new_data) : @left = Bst.new(new_data)
    end
  end

  def each(&block)
    to_enum.each(&block)
  end

  private

  def to_enum
    Enumerator.new do |yielder|
      @left.each { |child| yielder << child } if @left
      yielder << data
      @right.each { |child| yielder << child } if @right
    end
  end
end
