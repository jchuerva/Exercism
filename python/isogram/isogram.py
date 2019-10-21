import re


def is_isogram(string):
    clean_str = re.sub(r"[^a-z]", "", string.lower())
    return(len(set(clean_str)) == len(clean_str))


def version():
    VERSION = 1
