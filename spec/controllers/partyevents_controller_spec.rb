require 'spec_helper'

describe PartyeventsController do

  #"let" code is only called when it is referenced, all the code in a before in evaluated regardless
  let(:user) do
    create_user! #Helper method that lives in rspec/helpers/seed_helpers
  end
  
  let(:partyevent) do
    Factory(:partyevent)
  end
  
  context "Standard users" do
    
      { "new" => "get",
        "create" => "post",
        "edit" => "get",
        "update" => "put",
        "destroy" => "delete"}.each do |action, method|
          it "Cannot access the #{action} action" do
              sign_in(:user, user) #Devise method: first argument is scope, second is the resource. Devise::TestHelpsers added in spec/support/devise 
              #Send method allows to dynamically call methods and pass arguments
              #we use it Because for each key-value the action and mehotd change. 
              #The action variable is a frozen string in ruby 1.9.2(beacuse ita a block param) so we use dup to duplocate the object since rails forces UTF-8
              
              #We pass the .id, becuase with out it the controller could not route to the different actions
              send(method, action.dup, :id=>partyevent.id)
              response.should redirect_to(root_path)
              flash[:alert].should eql("You must be an admin to do that.")
          end
        end
  end
  
  it "displays an error for a missing partyevent" do
    get :show, :id => "does_not_exist"
    response.should redirect_to(partyevents_path)
    message = "The Partyevent you were looking for could not be found."
    flash[:alert].should eql(message)
  end
  
end
