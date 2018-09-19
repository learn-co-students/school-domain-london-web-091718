require "pry"

class School

attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = Hash.new {|k, v| k[v] = []}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    # binding.pry
    @roster.map do |grade, name| #only looks at first key and sorts
      @roster[grade] = name.sort

    end
    @roster
  end

end

# binding.pry

# p 'end'
