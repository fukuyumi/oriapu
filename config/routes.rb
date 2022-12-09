Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to: 'user/items#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :items, only: [:new, :create, :index, :show, :edit, :update]
  end
  namespace :user do
    resources :items, only: [:index, :show]
  end

end
