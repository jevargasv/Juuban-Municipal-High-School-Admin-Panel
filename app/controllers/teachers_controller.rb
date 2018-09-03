class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end
  
  def create
    @teacher = Teacher.create(teacher_params)
    @teacher.build_user(email: params[:email], password: params[:password]).save
    if @teacher.save
      redirect_to '/teachers'
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update(teacher_params)
      redirect_to teachers_path
    else
      render 'edit'
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to '/teachers'
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :age, :date_of_birth, :photo_url, :email, :fair, :salary, :education, :subject)
  end

end
