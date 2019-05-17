import string
import pdb

def is_pangram(sentence):

  # pdb.set_trace()
  
  letters = string.ascii_lowercase
  lower_sentence = sentence.lower()
  result = True
  for item in letters:
    if item in lower_sentence:
      continue
    else:
      result = False
      break
  return result

      
def version():
  VERSION = 1