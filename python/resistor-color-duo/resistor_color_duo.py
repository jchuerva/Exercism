def value(colors):
  value = ''
  for color in colors:
    value += str(valor().index(color))
  return int(value)

def valor():
  return [
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
