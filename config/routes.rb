Peepr::Application.routes.draw do

  get "tweet/all"

  get "tweet/create"

  get "tweet/view"
  get "tweet/fetch"

  root :to => "static#home"

  match "/auth/twitter/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", as: :signout
  match "/update" => "tweet#fetch", as: :update
  match "/tweets" => "tweet#all", as: :all

end
