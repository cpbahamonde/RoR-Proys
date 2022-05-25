require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is not valid without an author" do
    post = Post.create(title: "Some Title", content: "The Content")
    expect(post).to_not be_valid
  end
end
