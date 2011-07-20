class PartyeventsController < ApplicationController
  before_filter :find_partyevent, :only => [:show, :edit, :update, :destroy]

  
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
    
  end
  
  def edit
    
  end
  
  def update
    if @partyevent.update_attributes(params[:partyevent])
      flash[:notice] = "Partyevent has been updated."
      redirect_to @partyevent
    else
      flash[:alert] = "Partyevent has not been updated."
      render :action => "edit"
    end
  end
  
  def destroy
    @partyevent.destroy
    flash[:notice] = "Partyevent has been deleted."
    redirect_to partyevents_path
  end
  
  
private
  def find_partyevent
    @partyevent = Partyevent.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The Partyevent you were looking for could not be found."
    redirect_to partyevents_path
  end
  
end
