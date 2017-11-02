Rails.application.routes.draw do

  resources :books
  devise_for :users, :controllers => { registrations: 'registrations' }
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :profiles

  root 'static_pages#home'

  get 'profile', to: 'profiles#current'

end
