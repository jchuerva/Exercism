def triplets_with_sum(number):
    array_of_triplets = []
    for a in range(1, int(number / 3) + 1):
        for b in range(a + 1 , int(number / 2) +1 ):
            c = number - b - a
            if is_triplet([a, b, c]):
                array_of_triplets.append([a, b, c])
    return array_of_triplets


# def triplets_in_range(start, end):
#     pass


def is_triplet(triplet):
    return triplet[0] ** 2 + triplet[1] ** 2 == triplet[2] ** 2


def version():
    VERSION = 1
