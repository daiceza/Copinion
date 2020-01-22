Rails.application.routes.draw do
  resources :lives
  resources :studies
  root 'study#index'
  get '/lives', to: 'lives#index'
  get '/study', to: 'study#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
