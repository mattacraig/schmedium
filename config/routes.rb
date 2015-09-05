Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    resources :comments
  end

  root 'posts#index'
  
  get '/category/:id', to: 'categories#show', as: 'category'
  get '/authors/:id', to: 'authors#show', as: 'author'

end
