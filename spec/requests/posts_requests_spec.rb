require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET#index' do
    before { get user_posts_path(1) }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders index template' do
      expect(response).to render_template(:index)
    end

    it 'includes the posts list' do
      expect(response.body).to include('Here a list of posts froma given user.')
    end
  end

  describe 'GET#show' do
    before { get user_post_path(1, 1) }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders show template' do
      expect(response).to render_template(:show)
    end

    it 'includes the posts detail info' do
      expect(response.body).to include('Here is the details for a given post.')
    end
  end
end
