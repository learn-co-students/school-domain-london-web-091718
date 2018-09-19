
class School

attr_accessor :name, :roster, :student_name, :grade


def initialize(name)
  @name = name
  @roster = {}
 end


  def add_student (student_name, grade)

  if @roster.has_key?(grade)
     @roster[grade] << student_name
  else
   @roster[grade] = []
   @roster[grade] << student_name
  end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_values = @roster.map {|k,v| k=k, v.sort}
    sorted_values.sort.to_h
  end




end
