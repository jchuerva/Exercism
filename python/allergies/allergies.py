class Allergies(object):

    ALLERGIC_POINT = {
        "eggs": 1,
        "peanuts": 2,
        "shellfish": 4,
        "strawberries": 8,
        "tomatoes": 16,
        "chocolate": 32,
        "pollen": 64,
        "cats": 128
    }

    def __init__(self, score):
        self.__score = score

    def allergic_to(self, item):
        # better work with alergic points in binary
        # copy bits if are in both
        return self.ALLERGIC_POINT[item] & self.__score == self.ALLERGIC_POINT[item]

    @property
    def lst(self):
        # list = []
        # for a, p in self.ALLERGIC_POINT.items():
        #     if p & self.score == p:
        #         list.append(a)
        # return list

        return [a for a, p in self.ALLERGIC_POINT.items() if p & self.__score == p]


class Version():
    VERSION = 1
