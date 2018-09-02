class StudentsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Student '#{@student.full_name}' has been successfully added to roster!"
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
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:notice] = "Student '#{@student.full_name}' has been successfully updated to roster!"
      redirect_to '/students/#{:id}'
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:alert] = "Student '#{@student.full_name}' has been successfully deleted to roster!"
    redirect_to '/students'
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :date_of_birth, :year, :photo_url, :email, :good)
  end
  
end
