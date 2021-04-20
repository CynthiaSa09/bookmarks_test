Rails.application.routes.draw do
  root 'dashboard#index'
  resources :categories
  resources :kinds
  resources :bookmarks
  

  get 'categories/:id/api', to: 'categories#api', as: 'api'
end
