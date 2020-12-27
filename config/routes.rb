Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :agents, only: [:index, :show, :create] do
    resources :reviews, only: [:index, :create, :edit, :update, :destroy]
  end
end
