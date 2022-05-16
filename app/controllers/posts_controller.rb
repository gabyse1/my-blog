class PostsController < ApplicationController
  def index
    render html: 'Here a list of posts froma given user.'
  end

  def show
    render html: 'Here is the details for a given post.'
  end
end
