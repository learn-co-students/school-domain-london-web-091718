# code here!
class School

attr_reader :roster, :model

def initialize(model)
  @model = model
  @roster = {}
end

def add_student(name,grade)
  if @roster.keys.include?(grade)
    @roster[grade] << name
  else
    @roster[grade] = []
    @roster[grade] << name
    #Alternative solution:
    # @roster[grade] ||= Array.new
    # @roster[grade].push(name)
 end
end

 def grade(grade)
   @roster[grade]
 end

def sort
  final_hash = Hash.new(0)
  @roster.each do |grade, students| #splits roster elements
    grade_array = @roster.keys.sort #creates array with sorted grades
    grade_array.each do |grade|
      sorted_students=@roster[grade].sort #creates array with sorted students
      final_hash[grade] = sorted_students #pushes student arrays to their appropriate marks
    end
  end
  return final_hash
end


end
