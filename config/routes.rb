Rails.application.routes.draw do
  get 'rails/generate'

  get 'rails/controller'

  get 'rails/coupon'

  resources :user 
  resources :loyalty
  resources :store
  resources :coupon
  resources :purchase
  resources :sessions 

  get '/logout', to: 'sessions#destroy'

  root to: "user#show"

end
