Rails.application.routes.draw do
  root 'categories#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: %i[]

            :categories, :action_categories

  namespace :admin
    resources :categories, :action_categories, :users
  end

end
