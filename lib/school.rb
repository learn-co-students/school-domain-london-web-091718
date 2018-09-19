# code here!

class School
  attr_reader :roster, :name

  def initialize(school)
    @name = school
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|k, v| v.sort!}
  end
end
