Rails.application.routes.draw do

  resources :books
  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :profiles

  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end

  root 'books#index'

  get 'profile', to: 'profiles#current'

  get 'readers_books', to: 'static_pages#readers_books'

  get 'messages', to: 'static_pages#messages'

  get 'messages/open', to: 'messages#create'

end
