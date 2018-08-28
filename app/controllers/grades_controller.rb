class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(grade_params)
    if @grade.save
      flash[:success] = "Grade has been successfully added to roster!"
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
      flash[:alert] = "Grade has been successfully updated to roster!"
      redirect_to @grade
    else
      render 'edit'
    end
  end

  def destroy
    @grade = Grade.find(params[:id])
    @grade.destroy
    flash[:warning] = "Grade has been successfully deleted to roster!"
    redirect_to '/grades'
  end

  private
  
  def grade_params
    params.require(:grade).permit(:pass, :student, :cohort)
  end

end
