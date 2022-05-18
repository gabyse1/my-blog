require 'rails_helper'

RSpec.describe User, type: :model do
  user_subject = User.new(
    name: 'Gabriela Sánchez Espirilla',
    photo: 'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    bio: 'Biografía de prueba para Gabriela Sánchez Espirilla',
    postsCounter: 0
  )

  before { user_subject.save }

  context '#name' do
    it 'should be present' do
      user_subject.name = nil
      expect(user_subject).to_not be_valid
    end
  end

  context '#photo' do
    it 'should be present' do
      user_subject.photo = nil
      expect(user_subject).to_not be_valid
    end
  end

  context '#bio' do
    it 'should be present' do
      user_subject.bio = nil
      expect(user_subject).to_not be_valid
    end
  end

  context '#postsCounter' do
    it 'should be present' do
      user_subject.postsCounter = nil
      expect(user_subject).to_not be_valid
    end

    it 'should be greater than or equal to zero' do
      user_subject.postsCounter = -1
      expect(user_subject).to_not be_valid
    end
  end

  describe '#method' do
    user = User.create(name: 'Gaby', photo: 'photo Gaby', bio: 'bio Gaby', postsCounter: 0)
    post_a = Post.create(user: user, title: 'post A', text: 'text A', commentsCounter: 0, likesCounter: 0)
    post_b = Post.create(user: user, title: 'post B', text: 'text B', commentsCounter: 0, likesCounter: 0)
    post_c = Post.create(user: user, title: 'post C', text: 'text C', commentsCounter: 0, likesCounter: 0)
    post_d = Post.create(user: user, title: 'post D', text: 'text D', commentsCounter: 0, likesCounter: 0)
    post_e = Post.create(user: user, title: 'post E', text: 'text E', commentsCounter: 0, likesCounter: 0)

    context '#most_recent_posts' do
      it 'should get the 3 most recent posts' do
        expect(user.most_recent_posts.length).to eq 3
      end

      it 'should get the last post as the first result' do
        expect(user.most_recent_posts.first.title).to eq 'post E'
      end

      it 'should get the third post as the last result' do
        expect(user.most_recent_posts.last.title).to eq 'post C'
      end
    end

    context '#posts_desc_order' do
      it 'should get the all user post in descendent order' do
        expect(user.posts_desc_order[0].title).to eq 'post E'
      end
    end
  end
end
