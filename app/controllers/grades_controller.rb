class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def new
    @grade = Grade.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
