require 'rails_helper'

RSpec.describe Comment, type: :model do
  user_subject = User.new(
    name: 'Gabriela Sánchez Espirilla',
    photo: 'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    bio: 'Biografía de prueba para Gabriela Sánchez Espirilla',
    postsCounter: 0
  )
  user_subject.save

  post_subject = Post.new(
    user: user_subject,
    title: 'My first post',
    text: 'This is the first post of Gabriela Sánchez Espirilla',
    commentsCounter: 0,
    likesCounter: 0
  )
  post_subject.save

  comment_subject = Comment.new(text: 'This is a comment for My first post', user: user_subject, post: post_subject)

  before { comment_subject.save }

  context '#user' do
    it 'should be present' do
      comment_subject.user = nil
      expect(comment_subject).to_not be_valid
    end
  end

  context '#post' do
    it 'should be present' do
      comment_subject.post = nil
      expect(comment_subject).to_not be_valid
    end
  end

  context '#text' do
    it 'should be present' do
      comment_subject.text = nil
      expect(comment_subject).to_not be_valid
    end
  end

  describe '#method' do
    user = User.create(name: 'Gaby', photo: 'photo Gaby', bio: 'bio Gaby', postsCounter: 0)
    post = Post.create(user: user, title: 'post A', text: 'text A', commentsCounter: 0, likesCounter: 0)
    comment_a = Comment.create(user: user, post: post, text: 'comment A')
    comment_b = Comment.create(user: user, post: post, text: 'comment B')

    context '#increment_comments_counter' do
      it 'should incremment the Post&apos;s commentsCounter attribute to from 0 to 2' do
        expect(post.commentsCounter).to eq 2
      end
    end

    context '#decrement_comments_counter' do
      it 'should decrement the Post&apos;s commentsCounter attribute to from 2 to 1' do
        comment_b.destroy
        expect(post.commentsCounter).to eq 1
      end
    end
  end
end
