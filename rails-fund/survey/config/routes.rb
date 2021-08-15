Rails.application.routes.draw do
  #get 'users/index'
  #get 'users/create'
  #get 'users/results'

  get '/' => "users#index"
  post 'create' => "users#create"
  get 'results' => "users#results"
end
