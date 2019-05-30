TOTAL_SQUARES = 64


def square(number):
    if number in range(1, TOTAL_SQUARES + 1):
        return 2 ** (number - 1)
    else:
        raise ValueError("error")


def total(number):
    if number in range(1, TOTAL_SQUARES + 1):
        return (2 ** TOTAL_SQUARES) - 1
    else:
        raise ValueError("error")


def version():
    VERSION = 1
