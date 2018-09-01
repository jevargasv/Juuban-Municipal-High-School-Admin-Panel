class TeachersController < ApplicationController
  before_action :authenticate_user!

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
      flash[:success] = "Teacher '#{@teacher.full_name}' has been successfully added to roster!"
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
      flash[:alert] = "Teacher '#{@teacher.full_name}' has been successfully updated to roster!"
      redirect_to '/teachers/#{@teacher.id}'
    else
      render 'edit'
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    flash[:warning] = "Teacher '#{@teacher.full_name}' has been successfully deleted to roster!"
    redirect_to '/teachers'
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :age, :date_of_birth, :photo_url, :email, :fair, :salary, :education, :subject)
  end

end
