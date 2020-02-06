Rails.application.routes.draw do
  
  root 'opinions#index'
  get 'opinions/index', to:'opinions#index'
  post 'opinions/index',to:'opinions#create'
  patch '/opinions/:opinion_id/replies',to:'replies#update'
  
  resources :opinions do
    resources :replies
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
