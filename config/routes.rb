Partybushost::Application.routes.draw do

  devise_for :users
  
  get '/awaiting_confirmation',
    :to => "users#confirmation",
    :as => 'confirm_user'

  root :to => "partyevents#index"
  
  resources :partyevents do
    resources :partydetails
  end
  
  namespace :admin do
    root :to => "base#index"
    resources :users
  end
end
