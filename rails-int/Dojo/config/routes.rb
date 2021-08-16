Rails.application.routes.draw do
  
  get 'camps/index' => "camps#index"

  get 'camps/new' => "camps#new"

  post 'camps/create' => "camps#create"

  get 'camps/:id' => "camps#show"

  get 'camps/:id/edit' => "camps#edit"

  patch 'camps/:id/edit' => "camps#update"

  delete 'camps/id' => "camps#destroy"

     # resources :camps
end
