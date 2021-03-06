Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index]
  resources :locations, only: [:index]
  resources :uploads, only: [:index, :create, :update]
end
