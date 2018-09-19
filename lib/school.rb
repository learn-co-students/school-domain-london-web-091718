# code here!
require 'pry'
class School
  attr_accessor :name, :roster


  def initialize(school)
    @school = school
    @roster = {}
  end


  def add_student(name, grade)
    if @roster[grade] # array already exsits
      @roster[grade].push(name)
    else
      name_array =[]
      name_array.push(name)

      @roster[grade] = name_array
    end
  end

  def grade(grade)
    @roster[grade]
  end
  # def roster
  #   {}
  # end
  #
  # def add_student(name, grade)
  #   roster[grade] = []
  #   roster[grade] << name
  #
  # end
  def sort
    @roster.each {|grade, name|
      @roster[grade] = name.sort}

  end

end
school = School.new("Bayside High School")
