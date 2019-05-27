class Matrix(object):
    def __init__(self, matrix_string):
        self.rows = [[int(i) for i in r.split()] for r in matrix_string.split("\n")]
        self.columns = [list(l) for l in zip(*self.rows)]

    def row(self, row_number):
        return self.rows[row_number - 1]

    def column(self, column_number):
        return self.columns[column_number - 1]


def version():
    VERSION = 2
