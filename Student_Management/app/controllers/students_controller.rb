class StudentsController < ApplicationController
  def index
    @students  = Student.all
  end

  def new
    @student = Student.new
    @department = Department.all
  end

  def show
    @student = Student.new(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render 'new'
    end
  end

  private
    def student_params
      params.require(:student).permit(:name, :marks, :age, :department_id)
    end
end
