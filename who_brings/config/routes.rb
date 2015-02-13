
Rails.application.routes.draw do
  
  root to: "site#index"

  match 'auth/:provider/callback', to: 'omniauth#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]

  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get "/sign_up", to: 'users#new', as: "sign_up"
  resources :users

  get "/contact", to: "site#contact"
  get "/about", to: "site#about"

end
