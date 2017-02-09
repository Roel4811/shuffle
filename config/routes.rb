Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :profiles
  root 'profiles#index'
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
