class UsersController < ApplicationController
  def index
    @users = User.all.order(id: :asc)
    @current_user = current_user
  end

  def show
    @current_user = current_user
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @user.to_json(include: [:posts]) }
    end
  end
end
