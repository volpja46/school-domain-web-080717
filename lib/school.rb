# code here!
class School
  # roster = {
  # grade => [student, student, student]
# }
attr_accessor :name, :roster

def initialize (name)
  @name = name
  @roster = {}
end

def add_student(student_name, grade)
  # @roster[9] = [student_name] h
  if @roster.keys.include?(grade)
    @roster[grade] << student_name
  else
    @roster[grade] = [student_name]
  end
end

def grade(grade)
@roster[grade]
end

def sort #sort students by name ---> in hash bc hash has no order
  sorted_roster = {}
@roster.each do |grade, students| # key is grade value students
  sorted_roster[grade] = students.sort
end
sorted_roster
end
end
