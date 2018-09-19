require 'pry'

class School

  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
      unless @roster.key?(grade)
         @roster[grade] = []
      end
      @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @new_roster = {}
    @roster.map do |grade, students|
      @new_roster[grade] = students.sort
    end
    @new_roster
  end
end
