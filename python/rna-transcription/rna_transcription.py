def to_rna(dna_strand):
  return dna_strand.translate(str.maketrans('GCTA', 'CGAU'))

def version():
  VERSION = 1