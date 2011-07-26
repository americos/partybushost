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
    #empty, remember that :find_partydetail is being called as before_filter    
  end
  
  def edit
    #empty, remember that :find_partydetail is being called as before_filter
  end
  
  def update
    if @partydetail.update_attributes(params[:partydetail])
      flash[:notice]= "Partydetail has been updated."
      redirect_to [@partyevent, @partydetail]
    else
      flash[:notice]= "Partydetail has not been updated."
      render :action => "edit"
    end
  end
  
  def destroy
    @partydetail.destroy
    flash[:notice] = "Partydetail has been deleted."
    redirect_to @partyevent
  end
  
  private
  
    def find_partyevent
      @partyevent = Partyevent.find(params[:partyevent_id])
    end
  
    def find_partydetail
      @partydetail = @partyevent.partydetails.find(params[:id])
    end
    
end
