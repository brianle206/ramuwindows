Rails.application.routes.draw do
  devise_for :users
  resources :articles
  root 'articles#landing'
  get '/new' => 'articles#new'
end
