def factors(number):
    nums = set()
    for i in range(1, int(number ** 0.5) + 1):
        for factor in (i, number // i):
            if number % i == 0:
                nums.add(factor)
    return nums


def classify(number):
    if number == 1:
        return "deficient"
    if number < 1:
        raise ValueError("Classification is only possible")

    suma = sum(factors(number)) - number
    # alternative:
    # fact = factors(number)
    # fact.remove(number)
    # suma = sum(fact)

    if suma == number:
        return "perfect"
    elif suma > number:
        return "abundant"
    else:
        return "deficient"


def __version__():
    VERSION = 1
