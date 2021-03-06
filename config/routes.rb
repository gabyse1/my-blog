Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show]
  end

  resources :posts, only: %i[new create destroy] do
    resources :comments, only: %i[index new create destroy]
    resources :likes, only: %i[create destroy]
  end

  namespace :api do
    devise_for :users, as: 'api', controllers: { sessions: 'api/sessions', registrations: 'api/registrations' }

    resources :users, only: %i[] do
      resources :posts, only: %i[index]
    end
  
    resources :posts, only: %i[] do
      resources :comments, only: %i[index create]
    end
  end

  # Defines the root path route ("/")
  root "users#index"
end
