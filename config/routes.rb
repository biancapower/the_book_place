Rails.application.routes.draw do

  get 'charges/new'

  get 'charges/create'

  resources :books
  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :profiles

  resources :charges, only: [:new, :create]

  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end

  root 'books#index'

  get 'profile', to: 'profiles#current'

  get 'profile/connect_stripe', to: 'profiles#connect_stripe'

  get 'readers_books', to: 'static_pages#readers_books'

  get 'messages', to: 'static_pages#messages'

  get 'messages/open', to: 'messages#create'

  get 'thanks', to: 'charges#thanks'

end
