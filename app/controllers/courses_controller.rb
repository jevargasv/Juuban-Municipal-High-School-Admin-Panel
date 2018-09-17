class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.order(:id).all
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to '/courses'
    else
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    if @course.update(course_params)
      redirect_to '/courses'
    else
      render 'edit'
    end
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to '/courses'
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :location, :description, :class_hours)
  end
  
end
