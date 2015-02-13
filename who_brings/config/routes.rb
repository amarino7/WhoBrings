
Rails.application.routes.draw do
  
  root to: "site#index"

  resources :users

  get "/contact", to: "site#contact"
  get "/about", to: "site#about"

end
