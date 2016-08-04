Rails.application.routes.draw do
  devise_for :users
  resources :articles
  root 'articles#index'
  get '/new' => 'articles#new'
end
