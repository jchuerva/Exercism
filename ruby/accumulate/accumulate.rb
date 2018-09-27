# Accumulate method
module Accumulate
  def accumulate
    return [] if empty?

    collect { |item| yield(item)}
  end
end

Array.class_eval { include Accumulate }
