Rails.application.routes.draw do
  root 'products#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: %i[index show]
  resources :categories, only: %i[index show]

  namespace :admin do
    resources :categories, :action_categories, :users, :products
  end
end