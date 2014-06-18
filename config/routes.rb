Peepr::Application.routes.draw do

  root :to => "static#home"

  match "/auth/twitter/callback" => "sessions#create"

end
