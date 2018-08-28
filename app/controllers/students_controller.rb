class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Student has been successfully added to roster!"
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
      flash[:alert] = "Student has been successfully updated to roster!"
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:warning] = "Student has been successfully deleted to roster!"
    redirect_to '/students'
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :date_of_birth, :year, :photo_url, :email, :good)
  end
  
end
