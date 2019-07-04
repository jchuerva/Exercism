import primefac


def __version__():
    VERSION = 2


def factors(value):
    if value == 1:
        return []
    else:
        # n = 2
        # factors = []
        # while value != 1:
        #     if value % n == 0:
        #         factors.append(n)
        #         value = value / n
        #     else:
        #         n += 1
        # return factors
        return list(primefac.primefac(value))
