class PartyeventsController < ApplicationController
  
  def index
    @partyevents = Partyevent.all
  end
  
  def new
    @partyevent = Partyevent.new
  end
  
  def create
    @partyevent = Partyevent.new(params[:partyevent])
    if @partyevent.save
      flash[:notice] = "Partyevent has been created."
      redirect_to @partyevent
    else
      flash[:alert] = "Partyevent has not been created."
      render :action => "new"
    end
  end
  
  def show
    @partyevent = Partyevent.find(params[:id])
  end
end
