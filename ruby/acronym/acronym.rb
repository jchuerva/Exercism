# Acronym module comment
module Acronym
  def self.abbreviate(name)
    name.gsub('-',' ').split(' ').collect { |word| word[0].upcase }.join
  end
end