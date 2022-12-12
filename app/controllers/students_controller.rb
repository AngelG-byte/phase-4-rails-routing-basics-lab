class StudentsController < ApplicationController
    def index
      students = Student.all
      render json: students
    end

    def grades
       student = Student.all.order(grade: :desc)
        render json: student
    end

    def highest_grade
        student = Student.all.max_by{|e| e.grade}
        render json: student
    end


end
