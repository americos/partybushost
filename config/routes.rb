Partybushost::Application.routes.draw do

  devise_for :users

  root :to => "partyevents#index"
  
  resources :partyevents do
    resources :partydetails
  end
  
  namespace :admin do
    resources :users
  end
end
