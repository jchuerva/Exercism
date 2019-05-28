# from collections import Counter as multiset


def find_anagrams(word, candidates):
    return [
        item
        for item in candidates
        if (
            sorted(item.lower()) == sorted(word.lower())
            and item.lower() != word.lower()
        )
    ]
    # return [item for item in candidates if (multiset(item.lower()) == multiset(word.lower()) and and item.lower() != word.lower())]


def version():
    VERSION = 1

