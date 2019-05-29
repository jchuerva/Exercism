def largest_palindrome(max_factor, min_factor):
    if min_factor > max_factor:
        raise ValueError("invalid factor")
    else:
        palindromes = get_palindromes(min_factor, max_factor + 1)
        if bool(len(palindromes)):
            value = max(palindromes)
            factors = get_factors(min_factor, max_factor, value)
        else:
            value, factors = empty_response()

        return value, factors


def smallest_palindrome(max_factor, min_factor):
    if min_factor > max_factor:
        raise ValueError("invalid factor")
    else:
        palindromes = get_palindromes(min_factor, max_factor + 1)
        if bool(len(palindromes)):
            value = min(palindromes)
            factors = get_factors(min_factor, max_factor, value)
        else:
            value, factors = empty_response()

        return value, factors


def get_factors(min_factor, max_factor, value):
    factors = set()
    for a in range(min_factor, max_factor + 1):
        for b in range(a, max_factor + 1):
            if a * b == value:
                factors.add((a, b))
    return factors


def get_palindromes(start, end):
    palindromes = []
    for i in range(start, end):
        for j in range(i, end):
            number = i * j
            # only add palindromes number
            if str(number) == str(number)[::-1]:
                palindromes.append(number)
    return palindromes


def empty_response():
    return None, []


def version():
    VERSION = 1
