class PagesController < ApplicationController
  def index
  end
  def create
    User.create(email: params[:email], age: params[:age], params comment: params[:params])
  end
end
