Peepr::Application.routes.draw do

  get "tweet/all"

  get "tweet/create"

  get "tweet/view"
  get "tweet/fetch"

  root :to => "static#home"

  match "/auth/twitter/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", as: :signout

end
