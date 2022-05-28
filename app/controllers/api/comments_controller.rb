class Api::CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    render json: @comments, status: :ok
  end

  def create
    @comment = current_user.comments.new(comment_params)
    @post = Post.find(params[:post_id])
    @comment.post = @post
    if @comment.save
      render json: @comment, status: :ok
    else
      render json: {error: 'Error creating the comment.'}
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
