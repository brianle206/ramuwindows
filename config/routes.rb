Rails.application.routes.draw do

  get 'progress/add'

  devise_for :users
  resources :articles, :lecture, :admin, :dashboard
  #Progress Tracker
  get '/progress/add/:lid/:uid' => 'progress#add'

  #Admin Routes
  get '/destroy/:id' => 'admin#destroy'
  get '/make_admin/:id' => 'admin#make_admin'
  get '/unmake_admin/:id' => 'admin#unmake_admin'
  get '/admin/manage' => 'admin#manage'
  get '/dashboard/progress' => 'dashboard#progress'

  #Article Routes
  root 'articles#landing'
  get '/search' => 'articles#search'
  get '/new' => 'articles#new'
  get '/articles/:id/add_lecture' => 'articles#add_lecture'
  get '/articles/:id/lecture/:lid' => 'articles#lecture_show'
  get '/articles/:id/lecture/:lid/edit' => 'articles#lecture_edit'
  post '/articles/:id/create_lecture' => 'articles#create_lecture'
  get '/admin' => 'admin#index'
  delete '/articles/:id/lecture/:lid' => 'articles#lecture_destroy'
end
