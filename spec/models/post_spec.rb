require 'rails_helper'

RSpec.describe Post, type: :model do
  user_subject =
    User.new(
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

  before { post_subject.save }

  context '#title' do
    it 'should be present' do
      post_subject.title = nil
      expect(post_subject).to_not be_valid
    end

    it 'should not have more than 250 characters' do
      post_subject.title = 'a' * 260
      expect(post_subject).to_not be_valid
    end
  end

  context '#commentsCounter' do
    it 'should be present' do
      post_subject.commentsCounter = nil
      expect(post_subject).to_not be_valid
    end

    it 'should be an integer' do
      post_subject.commentsCounter = 1.5
      expect(post_subject).to_not be_valid
    end

    it 'should be greater than or equal to zero' do
      post_subject.commentsCounter = -1
      expect(post_subject).to_not be_valid
    end
  end

  context '#likesCounter' do
    it 'should be present' do
      post_subject.likesCounter = nil
      expect(post_subject).to_not be_valid
    end

    it 'should be an integer' do
      post_subject.likesCounter = 1.5
      expect(post_subject).to_not be_valid
    end

    it 'should be greater than or equal to zero' do
      post_subject.likesCounter = -1
      expect(post_subject).to_not be_valid
    end
  end

  describe '#method' do
    user = User.create(name: 'Gaby', photo: 'photo Gaby', bio: 'bio Gaby', postsCounter: 0)
    post_a = Post.create(user: user, title: 'post A', text: 'text A', commentsCounter: 0, likesCounter: 0)
    post_b = Post.create(user: user, title: 'post B', text: 'text B', commentsCounter: 0, likesCounter: 0)
    comment_a = Comment.create(user: user, post: post_a, text: 'comment A')
    comment_b = Comment.create(user: user, post: post_a, text: 'comment B')
    comment_c = Comment.create(user: user, post: post_a, text: 'comment C')
    comment_d = Comment.create(user: user, post: post_a, text: 'comment D')
    comment_e = Comment.create(user: user, post: post_a, text: 'comment E')
    comment_f = Comment.create(user: user, post: post_a, text: 'comment F')
    comment_g = Comment.create(user: user, post: post_a, text: 'comment G')

    context '#most_recent_comments' do
      it 'should get the 5 most recent posts' do
        expect(post_a.most_recent_comments.length).to eq 5
      end

      it 'should get the last comment as the first result' do
        expect(post_a.most_recent_comments.first.text).to eq 'comment G'
      end

      it 'should get the third comment as the last result' do
        expect(post_a.most_recent_comments.last.text).to eq 'comment C'
      end
    end

    context '#increment_posts_counter' do
      it 'should incremment the User&apos;s postsCounter attribute to from 0 to 2' do
        expect(user.postsCounter).to eq 2
      end
    end

    context '#decrement_posts_counter' do
      it 'should decrement the User&apos;s postsCounter attribute to from 2 to 1' do
        post_b.destroy
        expect(user.postsCounter).to eq 1
      end
    end
  end
end
