# Strain module comment
module Strain
  def keep
    select { |item| yield(item) }
  end

  def discard
    reject { |item| yield(item) }
  end
end

Array.class_eval { include Strain }
