
def sum_of_multiples(limit, multiples):
    if multiples == [0]:
        return 0
    suma = set()
    # remove 0 from multiples
    if 0 in multiples:
        multiples.remove(0)
    # iterate to find the multiples
    for num in range(limit):
        for mult in multiples:
            if num % mult == 0:
                suma.add(num)

    # return sum of multiples set
    return sum(suma)


class Version():
    VERSION = 1
