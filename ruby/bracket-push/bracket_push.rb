
module Brackets
  PAIR = { "{" => "}", "[" => "]", "(" => ")" }

  def self.paired?(input)
    # remove anything that is not curly braces, square brackets, or parentheses
    input.gsub!(/[^{}\[\]\(\)]/, "")
    
    # remove matched pairs
    while input.match(/\[\]/) || input.match(/{}/) || input.match(/\(\)/) do
      input.gsub!(/\[\]|{}|\(\)/, "")
    end

    # if the string is now empty it is paired; else it is not paired
    input.empty? ? true : false
  end

end

module Version
  VERSION = 1
end