def steps(number):
    if number <= 0:
        raise ValueError("invalid number")
    else:
        steps = 0
        while number != 1:
            steps += 1
            # odd number
            if bool(number & 1):
                number = (number * 3) + 1
            # even number
            else:
                number = int(number / 2)
    return steps


def version():
    VERSION = 1
