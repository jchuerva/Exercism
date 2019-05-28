import re


def verify(isbn):
    filter_isbn = isbn.replace("-", "")
    if not re.compile("[0-9]{9}([0-9]|X)$").match(filter_isbn):
        return False
    else:
        filter_isbn = re.findall("\w", isbn)
        filter_isbn[:] = ["10" if item == "X" else item for item in filter_isbn]
        data = list(
            int(a) * int(b)
            for a, b in list(zip(reversed(filter_isbn), list(range(1, 11))))
        )
        total = sum(data)
        modulo = total % 11
        return modulo == 0


def version():
    VERSION = 1
