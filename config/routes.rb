Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :guests
  # # show all guests
  # get "guests", to: "guests#index"

  # # show one guest
  # get "guests/:id", to: "guests#show"

  # # create guest (2 requests)
  # # first request to get the form, second to post the params
  # get "guests/new", to: "guests#new"
  # post "guests", to: "guests#create"

  # # update guest (2 requests)
  # get "guests/:id/edit", to: "guests#edit"
  # patch "guests/:id", to: "guests#update"

  # # delete guest
  # delete "guests/:id", to: "guests#destroy"

end
