# BeerSong class comment
class BeerSong
  def verse(ver)
    text(ver)
  end

  def verses(in_v, f_v)
    in_v.downto(f_v).map { |v| text(v) }.join("\n")
  end

  private

  def text(v)
    case v
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      "#{v} bottles of beer on the wall, #{v} bottles of beer.\n" \
      "Take one down and pass it around, #{v-1} bottles of beer on the wall.\n"
    end
  end
end
