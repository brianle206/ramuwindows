Rails.application.routes.draw do
  devise_for :users
  resources :articles
  root 'articles#landing'
  get '/new' => 'articles#new'
  get '/articles/:id/add_lecture' => 'articles#add_lecture'
  get '/articles/:id/lecture/:lid' => 'articles#lecture_show'
  post '/articles/:id/create_lecture' => 'articles#create_lecture'
end
