Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  post '/' => 'home#index'

  resources :notes

  get '/:name' => 'notes#show'
end
