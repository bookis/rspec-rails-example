require 'rails_helper'

describe Post do
  describe '.validates' do
    it 'is valid with valid body' do
      expect(Post.new(body: "I love cats!").valid?).to eq true
    end

    it 'body is present' do
      expect(Post.new.valid?).to eq false
    end

    it 'user_id must be present' do
      expect(Post.new(user_id: nil).valid?).to eq false
    end

    it 'body is fewer than 141 characters' do
      expect(Post.new(body: "a" * 141).valid?).to eq false
    end

    it 'body doesnt contain html' do
      expect(Post.new(body: "<script>").valid?).to eq false
    end

  end
end
