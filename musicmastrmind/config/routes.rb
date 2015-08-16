Rails.application.routes.draw do
  root to: 'static_pages#root'

  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show]

    resources :songs, only: [:create, :show, :index, :destroy, :update] do
      resources :lines, only: [:index]
    end

    resources :lines, only: [:create, :show, :destroy, :update] do
      resources :interpretations, only: [:index]
    end

    resources :interpretations, only: [:create, :show, :destory, :update]
  end

end
