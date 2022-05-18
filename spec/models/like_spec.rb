require 'rails_helper'

RSpec.describe Like, type: :model do
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

  subject = Like.new(user: user_subject, post: post_subject)
  before { subject.save }

  context '#user' do
    it 'should be present' do
      subject.user = nil
      expect(subject).to_not be_valid
    end
  end

  context '#post' do
    it 'should be present' do
      subject.post = nil
      expect(subject).to_not be_valid
    end
  end

  context '#uniqueness' do
    it 'A given user and a post must be added to likes table only once' do
      Like.create(user: user_subject, post: post_subject)
      second_record = Like.create(user: user_subject, post: post_subject)
      expect(second_record.errors.full_messages).to include('User has already been taken')
    end
  end

  describe '#method' do
    user_a = User.create(name: 'Gaby', photo: 'photo Gaby', bio: 'bio Gaby', postsCounter: 0)
    user_b = User.create(name: 'Sara', photo: 'photo Sara', bio: 'bio Sara', postsCounter: 0)
    post = Post.create(user: user_a, title: 'post A', text: 'text A', commentsCounter: 0, likesCounter: 0)
    Like.create(user: user_a, post:)
    like_b = Like.create(user: user_b, post:)

    context '#increment_likes_counter' do
      it 'should incremment the Post&apos;s likesCounter attribute to from 0 to 2' do
        expect(post.likesCounter).to eq 2
      end
    end

    context '#decrement_likes_counter' do
      it 'should decrement the Post&apos;s likesCounter attribute to from 2 to 1' do
        like_b.destroy
        expect(post.likesCounter).to eq 1
      end
    end
  end
end
