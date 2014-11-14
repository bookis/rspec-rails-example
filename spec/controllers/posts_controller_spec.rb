require 'rails_helper'

describe PostsController do
  let(:post) { Post.create(body: "Blah") }

  # This is what let creates for you:
  # def post
  #   @post ||= Post.create(body: "Blah")
  # end

  describe "GET 'index'" do
    it 'is successful' do
      get :index
      expect(response.status).to eq 200
    end
  end

  describe 'GET "show"' do

    it 'is successful' do
      get :show, id: post.id
      expect(response.status).to eq 200
    end

    it 'is successful with a mock' do
      expect(Post).to receive(:find).with("1").and_return(double(Post))
      get :show, id: 1
      expect(response.status).to eq 200
    end
  end
end
