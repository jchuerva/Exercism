import string
import pdb

def is_pangram(sentence):

  # pdb.set_trace()
  
  alfabet = set(string.ascii_lowercase)
  lower_sentence = set(sentence.lower())

  return lower_sentence >= alfabet

      
def version():
  VERSION = 2
