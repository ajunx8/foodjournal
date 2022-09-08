Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :foods do
    resources :logs, :except => :index
  end

  resources :tags

  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
