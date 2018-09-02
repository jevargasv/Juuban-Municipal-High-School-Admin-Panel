class CohortsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @cohorts = Cohort.all
  end

  def new
    @cohort = Cohort.new
  end
  
  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      flash[:success] = "Cohort '#{@cohort.name}' successfully added to roster!"
      redirect_to '/cohorts'
    else
      render 'new'
    end
  end

  def show
    @cohort = Cohort.find(params[:id])
    @course = Course.find_by(id: @cohort.course_id)
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    if @cohort.update(cohort_params)
      flash[:notice] = "Cohort '#{@cohort.name}' has been successfully updated to roster!"
      redirect_to '/cohorts/#{:id}'
    else
      render 'edit'
    end
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    flash[:alert] = "Cohort '#{@cohort.name}' has been successfully deleted to roster!"
    redirect_to '/cohorts'
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :icon_url, :course, :teacher)
  end

end
