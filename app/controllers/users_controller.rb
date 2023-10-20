class UsersController < ApplicationController
  def index
    @users = User.all
  end


  def create
  end

  def new

  end

  def show 
    @user = User.find(params[:id])
    flash.notice = "Đã tìm thấy user"
    redirect_to users_url
  end

  def update
  end

  def destroy
  end
  
  def hello
    @test = "Hello NUS"
  end
end
