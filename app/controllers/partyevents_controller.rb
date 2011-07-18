class PartyeventsController < ApplicationController
  
  def index
    
  end
  
  def new
    @partyevent = Partyevent.new
  end
  
  def create
    @partyevent = Partyevent.new(params[:partyevent])
    @partyevent.save
    flash[:notice] = "Partyevent has been created."
    redirect_to @partyevent
  end
  
  def show
    @partyevent = Partyevent.find(params[:id])
  end
end
