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
#   VERSION = '1b'

#   def self.isogram?(input)
#     letters = 'abcdefghijklmnopqrstuvwxyz'
#     letters.chars.none? { |l| input.downcase.count(l) >= 2 }
#   end
# end
