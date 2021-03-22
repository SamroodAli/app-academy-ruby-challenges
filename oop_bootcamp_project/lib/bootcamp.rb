class Bootcamp
  def initialize(name,slogan,student_capacity)
    @name =  name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = Array.new()
    @students = Array.new()
    @grades = Hash.new {|hash,k| hash[k]= Array.new()}
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(string)
    @teachers << string
  end

  def enroll(string)
    if @students.length < @student_capacity
      @students << string
      return true
    end
    return false
  end

  def enrolled?(string)
    @students.include?(string)
  end

  def student_to_teacher_ratio
    (@students.length/@teachers.length).round
  end

  def add_grade(student,mark)
    if @students.include?(student)
      @grades[student] << mark
      return true
    else
      return false
    end
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    grades = @grades[student]
    return nil if grades==[]
    (grades.sum/grades.length).round
  end

end

