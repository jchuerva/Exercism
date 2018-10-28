# WordProblem class comment
class WordProblem
  VERSION = 1
  def initialize( text )
    @toks = text[8,text.size-9].split(' ')
  end

  def answer
    ans = @toks[0].to_i
    @toks[1,@toks.size].reject{ |t| t == 'by' }.each_slice(2) do |op, n|
      case op
      when 'plus'
        ans += n.to_i
      when 'minus'
        ans -= n.to_i
      when 'multiplied'
        ans *= n.to_i
      when 'divided'
        ans /= n.to_i
      else
        raise ArgumentError, "Unknown operator #{op}"
      end
    end
    ans
  end
end
