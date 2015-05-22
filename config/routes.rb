Rails.application.routes.draw do
  get 'rails/generate'

  get 'rails/controller'

  get 'rails/coupon'

  resources :user 
  resources :loyalty
  resources :store
  resources :coupon
  resources :purchase

end
