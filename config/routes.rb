Rails.application.routes.draw do




 

  devise_for :users
  resources :articles, :lecture, :admin
  get '/destroy/:id' => 'admin#destroy'
  get '/make_admin/:id' => 'admin#make_admin'
  get '/unmake_admin/:id' => 'admin#unmake_admin'
  root 'articles#landing'
  get '/search' => 'articles#search'
  get '/new' => 'articles#new'
  get '/articles/:id/add_lecture' => 'articles#add_lecture'
  get '/articles/:id/lecture/:lid' => 'articles#lecture_show'
  get '/articles/:id/lecture/:lid/edit' => 'articles#lecture_edit'
  post '/articles/:id/create_lecture' => 'articles#create_lecture'
  get '/admin' => 'admin#index'
  get '/admin/manage' => 'admin#manage'
  delete '/articles/:id/lecture/:lid' => 'articles#lecture_destroy'
end
