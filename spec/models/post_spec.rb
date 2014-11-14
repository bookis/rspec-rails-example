require 'rails_helper'

describe Post do
  describe '.validates' do
    it 'body is present' do
      expect(Post.new.valid?).to eq false
    end
  end
end
