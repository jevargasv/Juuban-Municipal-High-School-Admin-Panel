class GradesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @grades = Grade.all
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(grade_params)
    if @grade.save
      flash[:success] = "Grade for '#{@grade.student.full_name}' has been successfully added to roster!"
      redirect_to '/grades'
    else
      render 'new'
    end
  end

  def show
    @grade = Grade.find(params[:id])
  end

  def edit
    @grade = Grade.find(params[:id])
  end

  def update
    @grade = Grade.find(params[:id])
    if @grade.update(grade_params)
      flash[:alert] = "Grade for '#{@grade.student.full_name}' has been successfully updated to roster!"
      redirect_to '/grades/#{:id}'
    else
      render 'edit'
    end
  end

  def destroy
    @grade = Grade.find(params[:id])
    @grade.destroy
    flash[:warning] = "Grade for '#{@grade.student.full_name}' has been successfully deleted to roster!"
    redirect_to '/grades'
  end

  private

  def grade_params
    params.require(:grade).permit(:pass, :student, :cohort)
  end

end
