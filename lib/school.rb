require 'pry'

class School

attr_accessor :roster
attr_reader :add_student

  def initialize(roster)
    @roster = {}
  end

  def add_student (name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    if @roster.has_key?(grade)
      return @roster.values_at(grade).flatten
    end
  end

  def sort
    sorted_values = @roster.map {|k,v| k=k, v.sort}
    sorted_values.sort.to_h
  end

end
