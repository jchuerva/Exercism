module Complement
  def self.of_dna(dna)
    raise ArgumentError if /[^GCTA]/ =~ dna

    dna.tr('GCTA', 'CGAU')
  end
end
