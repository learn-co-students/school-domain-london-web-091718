class School

    attr_accessor :name, :roster

    def initialize(str_name)
        @name = str_name
        @roster = {}
    end

    def add_student(str_student_name, num_grade)
        if roster.key?(num_grade)
            roster[num_grade] << str_student_name
        else
            roster[num_grade] = []
            roster[num_grade] << str_student_name
        end
    end

    def grade(num_grade)
        roster[num_grade]
    end

    def sort
        sorted = {}
        roster.each do |k_grade, v_students|
            sorted[k_grade] = v_students.sort
        end
        sorted
    end
end