TOTAL_SQUARES = 64


def square(number):
    if number not in range(1, TOTAL_SQUARES + 1):
        raise ValueError("error")
    return 2 ** (number - 1)


def total(number):
    if number not in range(1, TOTAL_SQUARES + 1):
        raise ValueError("error")

    return (2 ** TOTAL_SQUARES) - 1


def version():
    VERSION = 2
