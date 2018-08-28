class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      flash[:success] = "Admin has been successfully added to roster!"
      redirect_to '/admins'
    else
      render 'new'
    end
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])
    if @admin.update(admin_params)
      flash[:alert] = "Admin has been successfully updated to roster!"
      redirect_to @admin
    else
      render 'edit'
    end
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    flash[:warning] = "Admin has been successfully deleted to roster!"
    redirect_to '/admins'
  end

  private

  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :photo_url, :email)
  end

end
