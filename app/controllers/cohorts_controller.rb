class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def new
    @cohort = Cohort.new
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
