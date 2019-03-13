require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  let!(:params) do
    { 
      author: "John Doe",
      content: "Test content" 
    }
  end

  describe "GET /posts" do 
    it "should return 200 OK" do
      expect(get :index).to have_http_status(200)
    end
  end
  
  describe "POST /posts" do
    it "should create a new post" do
      expect { Post.create(params) }.to change{ Post.count }.by(1)
    end
  end

  describe "DELETE /posts" do
    it "should delete an existing post" do
      saved_post = Post.create!(params)
      expect { Post.destroy(saved_post.id) }.to change{ Post.count }.by(-1)
    end
  end
end