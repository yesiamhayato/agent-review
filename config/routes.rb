Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :agents, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :create, :edit, :update, :destroy]
    collection do
      get 'search'
    end
  end
end
