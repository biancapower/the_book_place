Rails.application.routes.draw do

  resources :books
  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :profiles

  root 'static_pages#home'

  get 'profile', to: 'profiles#current'

  get 'readers_books', to: 'static_pages#readers_books'

end
