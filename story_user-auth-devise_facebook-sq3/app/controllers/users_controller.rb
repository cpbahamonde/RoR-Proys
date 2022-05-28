class UsersController < ApplicationController
  def index
    @stories = current_user.stories
    @email = current_user.email
  end
  def update
    @user = User.find(params[:id])
    @user.admin = !@user.admin
    @user.save
    redirect_to :admins, notice: 'User saved'
  end
end
