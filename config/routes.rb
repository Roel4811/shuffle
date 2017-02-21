Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount ActionCable.server => '/cable'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_for :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # as :user do
  #   get 'login', to: 'devise/sessions#new'
  # end

  resources :profiles
  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'pages#home'
  # # show all profiles
  # get "profiles", to: "profiles#index"

  # # show one profile
  # get "profiles/:id", to: "profiles#show"

  # # create profile (2 requests)
  # # first request to get the form, second to post the params
  # get "profiles/new", to: "profiles#new"
  # post "profiles", to: "profiles#create"

  # # update profile (2 requests)
  # get "profiles/:id/edit", to: "profiles#edit"
  # patch "profiles/:id", to: "profiles#update"

  # # delete profile
  # delete "profiles/:id", to: "profiles#destroy"

end
