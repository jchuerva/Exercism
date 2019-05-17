# import pdb
from datetime import timedelta

GIGASECOND = 1000000000

def add_gigasecond(moment):
  # pdb.set_trace()
  add_time = timedelta(seconds=GIGASECOND)
  return moment + add_time

def version():
  VERSION = 1
