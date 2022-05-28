Rails.application.routes.draw do
  scope :api, defaults: {format: :json } do
      devise_for :users, as: 'api', controllers: { sessions: 'api/sessions', registrations: 'api/registrations' }

      resource :user, only: [:show, :update]

      resources :users, only: [:index, :show] do
        resources :posts, only: [:index, :show] do
          resources :comments, only: [:index, :create, :show]
        end
      end
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show]
  end

  resources :posts, only: %i[new create destroy] do
    resources :comments, only: %i[index new create destroy]
    resources :likes, only: %i[create destroy]
  end

  # Defines the root path route ("/")
  root "users#index"
end
