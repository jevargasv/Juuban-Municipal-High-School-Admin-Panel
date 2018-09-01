class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:success] = "Course '#{@course.name}' has been successfully added to roster!"
      redirect_to '/courses'
    else
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
    @cohorts = Cohort.where(course_id: params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      flash[:alert] = "Course '#{@course.name}' has been successfully updated to roster!"
      redirect_to '/courses/#{:id}'
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:warning] = "Course '#{@course.name}' has been successfully deleted to roster!"
    redirect_to '/courses'
  end

  private

  def course_params
    params.require(:course).permit(:name, :location, :description, :icon_url, :class_hours)
  end
  
end
