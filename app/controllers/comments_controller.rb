class CommentsController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token, only: :create

  load_and_authorize_resource

  def index
    @current_user = current_user
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    render json: @comments, status: :ok
  end

  def new
    @current_user = current_user
    @post = Post.find(params[:post_id])
    respond_to do |format|
      format.html { render :new, locals: { user: @current_user, post: @post } }
    end
  end

  def create
    @comment = Comment.new(comment_params)
    # @comment.author_id = User.find(3).id
    # @comment.post_id = @post.id
    respond_to do |format|
      format.html do
        if @comment.save
          flash[:success] = 'Comment saved succesfully'
          redirect_to user_post_url(@post.user.id, @post.id)
        else
          flash[:error] = 'Error: Comment could not be saved'
          redirect_to user_post_url(@post.user.id, @post.id)
        end
      end
      format.json do
        unless @comment.save
          render json: { messages: 'Comment not created', is_success: false, data: {} },
                 status: :unprocessable_entity
        end
      end
    end
  end

  # def create
  #   @current_user = current_user
  #   @comment = current_user.comments.new(comment_params)
  #   @post = Post.find(params[:post_id])
  #   @comment.post = @post
  #   if @comment.save
  #     flash[:success] = 'Comment saved successfully'
  #     redirect_to user_post_url(@post.user.id, @post.id)
  #   else
  #     flash.now[:error] = @comment.errors.full_messages.to_sentence
  #     render :new, locals: { user: @current_user, post: @post }, status: 422
  #   end
  # end

  def destroy
    @comment = Comment.find(params[:post][:comment_id])
    comment_user_id = @comment.user.id
    @comment.destroy
    redirect_to user_url(comment_user_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
