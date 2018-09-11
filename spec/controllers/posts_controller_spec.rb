require "rails_helper"

describe PostsController do

  describe '#create' do
    
    subject { post.save }
    let(:author) { "Mirek" }
    let(:body) { "0123456789" }
    let(:post) { Post.new(author: author, body: body) }
    
    context 'post is valid' do
      it 'returns true' do
        is_expected.to eql(true)
      end
    end

    context 'author is empty' do
      let(:author) { "" }
      it 'returns false' do
        expect(subject).to eql(false)
      end
    end

    context 'body is empty' do
      let(:body) { "" }
      it 'returns false' do
        expect(subject).to eql(false)
      end
    end

    context 'author and body are empty' do
      let(:author) { "" }
      let(:body) { "" }
      it 'returns false' do
        expect(subject).to eql(false)
      end
    end

    context 'author is too short' do
      let(:author) { "a" }
      it 'returns false' do
        expect(subject).to eql(false)
      end
    end

    context 'body is too short' do
      let(:body) { "0123" }
      it 'returns false' do
        expect(subject).to eql(false)
      end
    end

    context 'author and body are too short' do
      let(:author) { "a" }
      let(:body) { "0123" }
      it 'returns false' do
        expect(subject).to eql(false)
      end
    end
  end

end