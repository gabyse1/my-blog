require 'swagger_helper'

RSpec.describe 'api/posts', type: :request do
  path '/api/users/{id}/posts' do
    parameter name: :id, in: :path, type: :string

    get("list the user's posts") do
      tags 'posts'
      produces 'application/json'

      response(200, 'successful') do
        schema type: :object,
               properties: {
                 posts: {
                   type: :array,
                   items: { '$ref' => '#/definitions/Post' }
                 }
               }

        User.destroy_all
        @user = User.create(name: 'Gaby', email: 'gaby@gmail.com', password: 'password', role: 'admin',
                            confirmed_at: Time.now)

        @post = Post.create(
          user: @user,
          title: 'post A Gaby',
          text: 'text A',
          commentsCounter: 0,
          likesCounter: 0
        )

        run_test! do |response|
          data = JSON.parameter(response.body)
          puts data
          expect(data.keys).to eq ['posts']
          expect(data['posts'].first['title']).to eq 'My first post'
        end
      end
    end
  end
end
