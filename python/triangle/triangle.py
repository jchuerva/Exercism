def equilateral(sides):
    return len(set(sides)) == 1 and set(sides) != set([0])


def isosceles(sides):
    return (len(set(sides)) == 2 or equilateral(sides)) and not invalid_triangle(sides)


def scalene(sides):
    return len(set(sides)) == 3 and not invalid_triangle(sides)


def invalid_triangle(sides):
    a = sides[0]
    b = sides[1]
    c = sides[-1]
    return a + b <= c or a + c <= b or b + c <= a


def version():
    VERSION = 1

