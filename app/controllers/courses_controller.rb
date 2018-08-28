class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:success] = "Course has been successfully added to roster!"
      redirect_to '/courses'
    else
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
    @cohorts = @course.cohorts
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      flash[:alert] = "Course has been successfully updated to roster!"
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:warning] = "Course has been successfully deleted to roster!"
    redirect_to '/courses'
  end

  private

  def course_params
    params.require(:course).permit(:name, :location, :description, :icon_url, :class_hours)
  end
  
end
