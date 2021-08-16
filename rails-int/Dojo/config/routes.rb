Rails.application.routes.draw do
  get 'camps/index' => "camps#index"

     resources :camps
end
