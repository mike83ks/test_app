Rails.application.routes.draw do
  root 'products#index'

  devise_for :users, path: :users, path_names: { sign_in: :login, sign_out: :logout }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete :logout, to: 'sessions#destroy'

  resources :products, only: %i[index show]
  resources :categories, only: %i[index show]

  namespace :admin do
    resources :categories, :action_categories, :users, :products
  end

  namespace :publisher do
    resources :products
  end
end