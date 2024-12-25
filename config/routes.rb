Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resource :registration, only: %i[new create]
  resource :profile

  get "up" => "rails/health#show", as: :rails_health_check

  get "home/index"
  root to: "home#index"
end
