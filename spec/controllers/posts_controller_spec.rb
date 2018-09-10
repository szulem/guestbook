require "rails_helper"

describe PostsController do

  describe '#create' do
    context 'post is valid' do
      let(:post) { Post.new(author: "Mirek", body: "0123456789") }
      it 'returns true' do
        expect(post.save).to eql(true)
      end
    end

    context 'author is empty' do
      let(:post) { Post.new(author: "", body: "0123456789") }
      it 'returns false' do
        expect(post.save).to eql(false)
      end
    end

    context 'body is empty' do
      let(:post) { Post.new(author: "Mirek", body: "") }
      it 'returns false' do
        expect(post.save).to eql(false)
      end
    end

    context 'author and body are empty' do
      let(:post) { Post.new(author: "", body: "") }
      it 'returns false' do
        expect(post.save).to eql(false)
      end
    end

    context 'author is too short' do
      let(:post) { Post.new(author: "a", body: "0123456789") }
      it 'returns false' do
        expect(post.save).to eql(false)
      end
    end

    context 'body is too short' do
      let(:post) { Post.new(author: "Mirek", body: "0123") }
      it 'returns false' do
        expect(post.save).to eql(false)
      end
    end

    context 'author and body are too short' do
      let(:post) { Post.new(author: "a", body: "0123") }
      it 'returns false' do
        expect(post.save).to eql(false)
      end
    end
  end

end