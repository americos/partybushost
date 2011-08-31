Partybushost::Application.routes.draw do

  devise_for :users

  root :to => "partyevents#index"
  
  resources :partyevents do
    resources :partydetails
  end
  
  namespace :admin do
    root :to => "base#index"
    resources :users
  end
end
