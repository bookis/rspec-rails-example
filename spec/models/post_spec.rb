require 'rails_helper'

describe Post do
  describe '.validates' do
    it 'body is present' do
      expect(Post.new.valid?).to eq false
    end

    it 'body is fewer than 141 characters' do
      expect(Post.new(body: "a" * 141).valid?).to eq false
    end
  end
end
