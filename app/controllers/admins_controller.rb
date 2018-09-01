class AdminsController < ApplicationController
  before_action :authenticate_user!

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.create(admin_params)
    @admin.build_user(email: params[:email], password: params[:password]).save
    if @admin.save
      flash[:success] = "Admin '#{@admin.full_name}' has been successfully added to roster!"
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
      flash[:alert] = "Admin '#{@admin.full_name}' has been successfully updated to roster!"
      redirect_to '/admins/#{:id}'
    else
      render 'edit'
    end
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    flash[:warning] = "Admin '#{@admin.full_name}' has been successfully deleted to roster!"
    redirect_to '/admins'
  end

  private

  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :photo_url, :email, :username)
  end

end
