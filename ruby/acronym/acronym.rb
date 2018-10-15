# Acronym module comment
module Acronym
  def self.abbreviate(name)
    name.scan(/\b\w/).join.upcase
  end
end
