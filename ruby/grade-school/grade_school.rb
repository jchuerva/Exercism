# School class comment
class School
  def initialize
    @clase = {}
  end

  def add(student, grade)
    @clase[student] = grade
  end

  def students(mark)
    return [] if @clase.empty?

    alumn_with_mark(mark)
  end

  def students_by_grade
    return [] if @clase.empty?

    marks.sort.map { |mark| grade_student_has(mark)}
  end

  private

  def marks
    @clase.values.uniq
  end

  def alumn_with_mark(mark)
    @clase.select {|key, value| value == mark}.keys.sort
  end

  def grade_student_has(mark)
    sub_hash = {}
    sub_hash[:grade] = mark
    sub_hash[:students] = alumn_with_mark(mark)
    sub_hash
  end
end