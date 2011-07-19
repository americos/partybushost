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
  
  def edit
    @partyevent = Partyevent.find(params[:id])
  end
  
  def update
    @partyevent = Partyevent.find(params[:id])
    if @partyevent.update_attributes(params[:partyevent])
      flash[:notice] = "Partyevent has been updated."
      redirect_to @partyevent
    else
      flash[:alert] = "Partyevent has not been updated."
      render :action => "edit"
    end
  end
  
  def destroy
    @partyevent = Partyevent.find(params[:id])
    @partyevent.destroy
    flash[:notice] = "Partyevent has been deleted."
    redirect_to partyevents_path
  end
  
end
