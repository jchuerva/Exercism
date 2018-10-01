# ETL module comment
module ETL
  def self.transform(old_format)
    new_format = {}
    old_format.each { |key, val| val.each { |v| new_format[v.downcase] = key } }
    new_format
  end
end
