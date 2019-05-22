from itertools import takewhile

codons = {'AUG': "Methionine", 'UUU': 'Phenylalanine', 'UUC': 'Phenylalanine', 'UUA': 'Leucine',
          'UUG': 'Leucine', 'UCU': 'Serine', 'UCC': 'Serine', 'UCA': 'Serine', 'UCG': 'Serine',
          'UAU': 'Tyrosine', 'UAC': 'Tyrosine', 'UGU': 'Cysteine', 'UGC': 'Cysteine', 'UGG': 'Tryptophan',
          'UAA': 'STOP', 'UAG': 'STOP', 'UGA': 'STOP'}

def proteins(strand):
  prot = []
  # griup strand in group of 3 chars
  for item in [strand[i:i+3] for i in range(0, len(strand), 3)]:
    # break if need to stop
    if codons[item] == 'STOP':
      break
    # append value
    prot.append(codons[item])
  return prot
