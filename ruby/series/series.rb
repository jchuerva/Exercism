# Series class comment
class Series
  def initialize(num)
    @num = num
  end

  def slices(serie)
    return @num.chars if serie == 1

    raise ArgumentError if serie > @num.size

    slon = serie - 1
    @num.chars.each_with_index.map { |_x, i| @num[i..(i + slon)] if i + slon < @num.size }.compact
  end
end
