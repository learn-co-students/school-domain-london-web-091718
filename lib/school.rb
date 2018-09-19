# code here!

require 'pry'
class School
  attr_reader :name, :roster

  def initialize(student_name)
    @student_name = student_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    @roster[student_grade] ||= []
    @roster[student_grade] << student_name
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each {|grade, student_arr| student_arr.sort!}
  end
  
end

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.roster
school.grade(9)
school.sort

p 'eof'
