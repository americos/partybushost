Partybushost::Application.routes.draw do
  root :to => "partyevents#index"
  
  resources :partyevents do
    resources :partydetails
  end
end
