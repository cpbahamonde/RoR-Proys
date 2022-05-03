class PagesController < ApplicationController
  def index
  end
  def create
    User.create(email: params[:email], age: params[:age], comment: params[:comment])
  end
end
