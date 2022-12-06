Rails.application.routes.draw do
  namespace :admin do
    get 'items/index'
    get 'items/show'
    get 'items/new'
    get 'items/edit'
  end
  namespace :user do
    get 'items/index'
    get 'items/show'
  end
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
