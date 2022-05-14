class UsersController < ApplicationController
  def new
      @user = User.new
  end

 def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new, notice: 'No ha sido posible crear al usuario'
    end
  end

  def show
    @user = Iser.includes(:stories).find(helpers.current_user.id)
  end

  private
  def user_params
    params.require()
  end
  
end
