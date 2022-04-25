class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all.order(grade: :desc)
        students = students
        render json: students
    end

    def highest_grade
        vale = Student.all.max_by{|student| student.grade}
        render json: vale
    end
end
