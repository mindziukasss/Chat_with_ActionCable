Rails.application.routes.draw do
  devise_for :users
  resources :chat_rooms, only: [:new, :create, :show, :index, :destroy]
  root 'chat_rooms#index'

  mount ActionCable.server => '/cable'
end
