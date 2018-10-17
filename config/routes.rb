Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'stay#index'
  resources :stay, only: [:show]
  get '/payment/:id', to: 'stay#update_payment_status', as: 'update_payment_status'
  post '/payment/:id', to: 'stay#update_payment_status'
end
