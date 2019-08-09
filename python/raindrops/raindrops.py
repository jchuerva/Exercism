from functools import reduce


def convert(number):
    message = ""
    if 3 in factors(number):
        message += "Pling"
    if 5 in factors(number):
        message += "Plang"
    if 7 in factors(number):
        message += "Plong"

    if not message:
        return str(number)
    else:
        return message


def factors(n):
    return set(reduce(list.__add__, ([i, n//i] for i in range(1, int(n**0.5) + 1) if n % i == 0)))


def version():
    VERSION = 1
