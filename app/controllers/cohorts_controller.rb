class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :edit, :update, :destroy]

  def index
    @cohorts = Cohort.order(:id).all
    @cohorts = Cohort.all
  end

  def new
    @cohort = Cohort.new
  end
  
  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to '/cohorts'
    else
      render 'new'
    end
  end

  def show
    @cohort = Cohort.find(params[:id])
    @students = Student.where(cohort_id: @cohort.id)
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    if @cohort.update(cohort_params)
      redirect_to '/cohorts'
    else
      render 'edit'
    end
  end

  def destroy
    Cohort.find(params[:id]).destroy
    redirect_to '/cohorts'
  end

  private

  def set_cohort
    @cohort = Cohort.find(params[:id])
  end

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :teacher_id)
  end

end
