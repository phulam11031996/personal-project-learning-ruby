# Defining Class
class Bootcamp

    # Initialize method
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash, studnet_name| hash[studnet_name] = [] }
    end 

    # Getter method
    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers 
        @teachers
    end

    def students
        @students
    end

    # Instance methods

    def hire(teacher)
        @teachers << teacher
    end 

    def enroll(student)
        if @student_capacity > students.length
            @students << student
            return true
        else
            return false
        end
    end

    def enrolled?(student)
        @students.map(&:downcase).include?(student.downcase)
    end

#_______________________FINISHED PART 1_________________________________________

    # More instance methods
    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(student, grade)
        # Check if the student is enrolled
        if self.enrolled?(student)
            @grades[student] << grade
            return true
        end
        false
    end

    # More getter method
    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)
        if self.num_grades(student) != 0 && self.enrolled?(student)
            return @grades[student].sum / @grades[student].length
        end
        nil
    end

end
# FINISHED PART 2