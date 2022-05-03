class PagesController < ApplicationController
  def index
  end
  def create
    # User.create(email: params[:email], age: params[:age], comment: params[:comment])
    @user = User.create(email: params[:email], age: params[:age], comment: params[:comment], name: params[:comment], )
  end

  def dashboard
    # @users = User.all
    if params[:email].present?
      @users = User.where('email = ?', params[:email])
    else
      # @users = User.find_valid
      @users = User.all
    end
  end

end