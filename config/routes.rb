Rails.application.routes.draw do





  get 'course/add'

  get 'course/update'

  devise_for :users
  resources :articles, :lecture, :admin, :dashboard, :learn
  #Progress Tracker
  get '/progress/add/:learn_id/:user_id/:lecture_id' => 'progress#add'

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
  #Learn Routes and Lectures
  get '/learn/:id/add_lecture' => 'learn#add_lecture'
  get '/learn/:id/lecture/:lid' => 'learn#lecture_show'
  get '/learn/:id/lecture/:lid/edit' => 'learn#lecture_edit'
  post '/learn/:id/create_lecture' => 'learn#create_lecture'
  get '/admin' => 'admin#index'
  delete '/learn/:id/lecture/:lid' => 'learn#lecture_destroy'
  get '/add/course/:learn_id' => 'course#add'
end
