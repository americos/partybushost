class PartydetailsController < ApplicationController
  before_filter :find_partyevent
  before_filter :find_partydetail, :only => [:show, :edit, :update, :destroy]
  
  def new
    @partydetail = @partyevent.partydetails.build
  end
  
  def create
    @partydetail = @partyevent.partydetails.build(params[:partydetail])
    if @partydetail.save
      flash[:notice] = "Partydetail has been created."
      redirect_to [@partyevent, @partydetail] #Just as in the _form, we pass an array and rails will figure we want:
                                              # partyevent.partydetail_path(@partyevent, @partydetail) (its DRYer this way)
    else
      flash[:alert] = "Partydetail has not been created."
      render :action =>"new"
    end
  end
  
  def show
    
  end
  
  private
  
    def find_partyevent
      @partyevent = Partyevent.find(params[:partyevent_id])
    end
  
    def find_partydetail
      @partydetail = @partyevent.partydetails.find(params[:id])
    end
    
end
