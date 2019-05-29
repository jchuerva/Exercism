def saddle_points(matrix):
    # if len(set(map(len, M))) > 1:
    if len(set([len(i) for i in matrix])) > 1:
        raise ValueError("invalid matrix")

    matrix_transpose = list(zip(*matrix))
    # initial empty points
    saddle_points = []
    for i, row in enumerate(matrix):
        for j, x in enumerate(row):
            if x == max(row) and x == min(matrix_transpose[j]):
                point = dict(row=i + 1, column=j + 1)
                saddle_points.append(point)

    if not bool(len(saddle_points)):
        saddle_points.append(dict())

    return saddle_points
