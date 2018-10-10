# FlattenArray module comment
module FlattenArray
  def self.flatten(array)
    array.flatten.compact
  end
end

Array.class_eval { include FlattenArray }