Rails.application.routes.draw do
  devise_for :super_admins, path: 'super_admins', controllers: { sessions: "super_admins/sessions",registrations: "super_admins/registrations"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions",registrations: "super_admins/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :users do
    collection do
      get  'dashboard'
      get  'inbox'
    end
  end

  resources :super_admins do
    collection do
      get  'dashboard'
    end
    match "delete_user", on: :member, via: [:get, :post]
  end

  resources :conversations, only: [:create] do
    member do
      post :close
    end

    resources :messages, only: [:create]
  end
end
