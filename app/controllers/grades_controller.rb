class GradesController < ApplicationController
  
  def index
    @grades = Grade.all
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(grade_params)
    @cohort = @grades.cohort
    @student = @grades.student
    if @grade.save
      redirect_to '/cohorts'
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    @grade = Grade.find(params[:id])
    if @grade.update(grade_params)
      redirect_to cohorts_path
    else
      render 'edit'
    end
  end

  def destroy
    @grade = Grade.find(params[:id])
    @grade.destroy
    redirect_to '/grades'
  end

  private

  def grade_params
    params.require(:grade).permit(:pass, :student, :cohort)
  end

end
