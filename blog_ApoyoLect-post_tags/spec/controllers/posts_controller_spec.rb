require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET index" do
    it "returns a successful response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns @posts" do
      post = Post.create(title: "Post title", content: "short comment", author: "John Doe")
      get :index
      expect(assigns(:posts)).to eq([post])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
