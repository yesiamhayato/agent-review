Rails.application.routes.draw do
  get 'reviews/index'
  devise_for :users
  root to: 'homes#top'
  resources :agents, only: [:index, :show]
end
