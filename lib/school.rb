# code here!
class School
attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(name, grade)
    if @roster[grade]
      @roster[grade].push(name)
    else
    name_arr = []
    name_arr.push(name)
    @roster[grade] = name_arr
  end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|key, value|
      @roster[key] = value.sort
    }
  end

end
