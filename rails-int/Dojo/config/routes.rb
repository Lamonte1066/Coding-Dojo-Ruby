Rails.application.routes.draw do
  root "camps#index"
  resources :camps do
    resources :students
  end

end
