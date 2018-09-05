class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :edit, :update, :destroy]

  def index
    @cohorts = Cohort.all
  end

  def new
    @cohort = Cohort.new
  end
  
  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to '/courses/#{course.id}'
    else
      render 'new'
    end
  end

  def show
    @cohort = Cohort.find(params[:id])
    @course = Course.find_by(id: @cohort.course_id)
    @students = StudentCohort.where(cohort_id: @cohort.id)
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    if @cohort.update(cohort_params)
      redirect_to "/courses/#{course.id}"
    else
      render 'edit'
    end
  end

  def destroy
    @cohort.destroy
    course = @cohort.course
    redirect_to '/courses/#{course.id}'
  end

  private

  def set_cohort
    @cohort = Cohort.find(params[:id])
  end

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :icon_url, :course, :teacher)
  end

end
