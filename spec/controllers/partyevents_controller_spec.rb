require 'spec_helper'

describe PartyeventsController do
  
  it "displays an error for a missing partyevent" do
    get :show, :id => "does_not_exist"
    response.should redirect_to(partyevents_path)
    message = "The Partyevent you were looking for could not be found."
    flash[:alert].should eql(message)
  end
  
end
