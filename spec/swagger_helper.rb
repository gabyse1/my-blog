require 'rails_helper'

RSpec.configure do |config|
  # Specify a root folder where Swagger JSON files are generated
  # NOTE: If you're using the rswag-api to serve API descriptions, you'll need
  # to ensure that it's configured to serve Swagger from the same folder
  config.swagger_root = Rails.root.join('swagger').to_s

  # Define one or more Swagger documents and provide global metadata for each one
  # When you run the 'rswag:specs:swaggerize' rake task, the complete Swagger will
  # be generated at the provided relative path under swagger_root
  # By default, the operations defined in spec files are added to the first
  # document below. You can override this behavior by adding a swagger_doc tag to the
  # the root example_group in your specs, e.g. describe '...', swagger_doc: 'v2/swagger.json'
  config.swagger_docs = {
    'v1/swagger.yaml' => {
      openapi: '3.0.1',
      info: {
        title: 'API V1',
        version: 'v1'
      },
      paths: {},
      definitions: {
        User: {
          type: 'object',
          properties: {
            id: { type: :integer, example: '1' },
            name: { type: :string, example: 'sara' },
            email: { type: :string, example: 'sara@gmail.com' },
            photo: { type: :string, example: 'user-profile.png' },
            bio: { type: :string, example: 'Enter your abstract bio here.' },
            role: { type: :string, example: 'default' },
            postsCounter: { type: :integer, example: '4' },
            created_at: { type: :string, example: '2022-05-25 23:46:08.714149000 +0000' },
            updated_at: { type: :string, example: '2022-05-25 23:55:10.593515000 +0000' }
          }
        },
        Post: {
          type: 'object',
          properties: {
            id: { type: :integer, example: '1' },
            title: { type: :string, example: 'My first post' },
            text: { type: :string, example: 'The body of my first post' },
            commentsCounter: { type: :integer, example: '1' },
            likesCounter: { type: :integer, example: '1' },
            user: { '$ref' => '#/definitions/User' },
            created_at: { type: :string, example: 'Fri, 27 May 2022 23:56:51.472460000 UTC +00:00' },
            updated_at: { type: :string, example: 'Fri, 27 May 2022 23:56:51.472460000 UTC +00:00' }
          }
        }
      },
      servers: [
        {
          url: 'https://{defaultHost}',
          variables: {
            defaultHost: {
              default: 'www.example.com'
            }
          }
        }
      ]
    }
  }

  # Specify the format of the output Swagger file when running 'rswag:specs:swaggerize'.
  # The swagger_docs configuration option has the filename including format in
  # the key, this may want to be changed to avoid putting yaml in json files.
  # Defaults to json. Accepts ':json' and ':yaml'.
  config.swagger_format = :yaml
end
