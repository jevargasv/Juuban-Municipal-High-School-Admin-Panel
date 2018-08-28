class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end
  
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:success] = "Teacher has been successfully added to roster!"
      redirect_to '/teachers'
    else
      render 'new'
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update(teacher_params)
      flash[:alert] = "Teacher has been successfully updated to roster!"
      redirect_to @teacher
    else
      render 'edit'
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    flash[:warning] = "Teacher has been successfully deleted to roster!"
    redirect_to '/teachers'
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :age, :date_of_birth, :photo_url, :email, :fair, :salary, :education, :subject, :cohort)
  end

end
