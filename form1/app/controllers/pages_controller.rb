class PagesController < ApplicationController
  def index
  end
  def create
    User.create(email: params[:email])
  end
end
