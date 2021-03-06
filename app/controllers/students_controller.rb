class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  
  def index
    @students = Student.order(:id).all
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to '/students'
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    if @student.update(student_params)
      redirect_to '/students'
    else
      render 'edit'
    end
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to '/students'
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :date_of_birth, :year, :cohort_id)
  end
  
end
