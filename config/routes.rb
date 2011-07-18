Partybushost::Application.routes.draw do
  root :to => "partyevents#index"
  
  resources :partyevents
end
