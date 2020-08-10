Rails.application.routes.draw do
  resources :forms
  resources :parttimes

  root 'sessions#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  get 'login',      to: 'sessions#new'
  post 'login',     to: 'sessions#create'
  post 'logout',    to: 'sessions#logout'
  get 'welcome',    to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'

  get 'partprofile',to: 'users#partprofile'
  post 'partprofile',to: 'users#createpartprofile'

  get 'fullprofile',to: 'users#fullprofile'
  post 'fullprofile',to: 'users#createfullprofile'
end
