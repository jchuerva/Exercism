from random import choice
from string import ascii_lowercase as alphabet
from itertools import cycle
import pdb


class Cipher(object):
    def __init__(self, key=None):
        self.key = key if key else self.generate_key()

    def encode(self, text):
        encoded = ''
        for c, k in zip(text, cycle(self.key)):
            encoded += alphabet[(alphabet.index(c) + alphabet.index(k)) % 26]
        return encoded

    def decode(self, text):
        decoded = ''
        for c, k in zip(text, cycle(self.key)):
            decoded += alphabet[(alphabet.index(c) - alphabet.index(k)) % 26]
        return decoded

    @staticmethod
    def generate_key():
        return ''.join(choice(alphabet) for _ in range(100))


class Version():
    version = 1
