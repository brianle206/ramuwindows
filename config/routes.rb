Rails.application.routes.draw do




  devise_for :users
  resources :articles, :lecture
  root 'articles#landing'
  get '/new' => 'articles#new'
  get '/articles/:id/add_lecture' => 'articles#add_lecture'
  get '/articles/:id/lecture/:lid' => 'articles#lecture_show'
  get '/articles/:id/lecture/:lid/edit' => 'articles#lecture_edit'
  post '/articles/:id/create_lecture' => 'articles#create_lecture'
  get '/admin' => 'admin#index'
  delete '/articles/:id/lecture/:lid' => 'articles#lecture_destroy'
end
