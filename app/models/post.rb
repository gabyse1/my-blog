class Post < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :posts
  has_many :comments, class_name: 'Comment', foreign_key: 'post_id', inverse_of: :post, dependent: :destroy
  has_many :likes, class_name: 'Like', foreign_key: 'post_id', inverse_of: :post, dependent: :destroy

  def most_recent_comments(items = 5)
    comments.order(created_at: :desc).take(items)
  end
end
