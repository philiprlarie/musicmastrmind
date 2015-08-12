Rails.application.routes.draw do
  root to: 'static_pages#root'

  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :songs, only: [:show] do
      resources :lines, only: [:index]
    end
    
    resources :lines, only: [:show]
  end

end
