# Isogram module comment
module Isogram
  def self.isogram?(input)
    cad = input.downcase.gsub(/\W+/, '')
    cad.size == cad.chars.uniq.size
  end
end
