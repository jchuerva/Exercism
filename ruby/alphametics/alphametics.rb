module Alphametics
  def self.solve(sum)

    letters = sum.scan(/[A-Z]/).uniq

    (0..9).to_a.permutation(letters.count).each do |digits|
      map = letters.zip(digits).to_h

      substitued = sum.gsub(/[A-Z]/, map)
      next if substitued.match(/(\s|\A)0/)

      return map if eval(substitued)
    end
    {}
  end
end
