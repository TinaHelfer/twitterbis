Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/home', to: 'home#index'
  post '/home', to: 'home#index'
end