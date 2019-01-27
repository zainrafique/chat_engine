Rails.application.routes.draw do
  devise_for :super_admins, path: 'super_admins'
  devise_for :users, path: 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

end
