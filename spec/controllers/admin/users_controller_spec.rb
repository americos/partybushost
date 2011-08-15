require 'spec_helper'

describe Admin::UsersController do

  let(:user) do
    create_user! #Helper method that lives in rspec/helpers/seed_helpers
  end

  context "Standard Users" do
      #This before block will be call before every spec inside the current context or describe
      before do
        sign_in(:user, user)
      end
      
      it "Are not able to access the index action" do
        get 'index'
        response.should redirect_to(root_path)
        flash[:alert].should eql("You must be an admin to do that.")
      end
  end

end
