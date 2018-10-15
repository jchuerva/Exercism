# Queens class comment
class Queens
  attr_reader :w_pos, :b_pos

  def initialize(white: [0, 3], black: [7, 3])
    @w_pos = white
    @b_pos = black

    raise ArgumentError if out_of_board?
  end

  def attack?
    return true if same_row? || same_column? || diagonal?
  end

  private

  def out_of_board?
    (w_pos + b_pos).select { |i| invalid_board_pos?(i) }.any?
  end

  def invalid_board_pos?(i)
    i < 0 || i > 7
  end

  def same_row?
    w_pos[0] == b_pos[0]
  end

  def same_column?
    w_pos[1] == b_pos[1]
  end

  def diagonal?
    (w_pos[0] - b_pos[0]).abs == (w_pos[1] - b_pos[1]).abs
  end
end
