import pdb
def two_fer(name ='you'):

  # pdb.set_trace()

  return ("One for {name}, one for me.".format(**locals()))

def version():
  VERSION = 1
