class Matrix(object):
    def __init__(self, matrix_string):
        self.matrix = matrix_string.split("\n")

    def row(self, index):
        return [int(x) for x in self.matrix[index - 1].split()]

    def column(self, index):
        return [self.row(i)[index - 1] for i in range(1, len(self.matrix) + 1)]


def version():
    VERSION = 1

