Peepr::Application.routes.draw do

  root :to => "static#home"

  match "/auth/twitter/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", as: :signout
  match "/update" => "tweets#fetch", as: :update

  resources :tweets

end
