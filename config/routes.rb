Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index]
  resources :locations, only: [:index]
  post '/uploads', to: 'uploads#create', as: 'uploads'
end
