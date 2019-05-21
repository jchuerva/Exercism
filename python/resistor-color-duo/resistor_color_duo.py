def value(colors):
  num_list = [ str(all_colors.index(color)) for color in colors ]
  return int(''.join(num_list))

all_colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white'
  ]

def version():
  VERSION = 2
