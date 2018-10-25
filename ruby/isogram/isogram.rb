# Isogram module comment
module Isogram
  VERSION = 3
  def self.isogram?(input)
    # cad = input.downcase.gsub(/\W+/, '')
    cad = input.downcase.delete("^a-z").chars
    cad == cad.uniq
  end
end

# module Isogram
#   VERSION = '1c'

#   def self.isogram?(input)
#     a = input.downcase.delete("^a-z")
#     a.chars.none? { |l| a.count(l) >= 2}
#   end
# end
