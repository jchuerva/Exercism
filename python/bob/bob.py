import re


def response(hey_bob):

    # remove empty chars
    if len(hey_bob.strip()) == 0:
        return "Fine. Be that way!"

    # number and not letters
    if re.sub(r"[a-zA-Z]", "", hey_bob) == hey_bob:
        if hey_bob.endswith("?"):
            return "Sure."
        else:
            return "Whatever."

    # if all uppercase
    if hey_bob.isupper():
        if hey_bob.endswith("?"):
            return "Calm down, I know what I'm doing!"
        else:
            return "Whoa, chill out!"

    # if question
    if hey_bob.strip().endswith("?"):
        return "Sure."

    return "Whatever."


def version():
    VERSION = 2
