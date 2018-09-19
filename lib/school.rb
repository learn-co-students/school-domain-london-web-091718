# code here!
require 'pry'

class School
  attr_accessor :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade].push(name)
    else
      name_array = []
      name_array.push(name)
      @roster[grade] = name_array
    end
  end

  def grade(grade)
    @roster[grade]
  end


  def sort
  @roster.each {|grade, array_student_names|
    @roster[grade] = array_student_names.sort()}


  end





end
