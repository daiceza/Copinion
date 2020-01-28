Rails.application.routes.draw do
  root 'opinions#index'
  #get 'opinions/index'
  resources :opinions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
