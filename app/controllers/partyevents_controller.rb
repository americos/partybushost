class PartyeventsController < ApplicationController
  before_filter :check_for_sign_up
  before_filter :authorize_admin!, :except => [:index, :show]
  before_filter :authenticate_user!, :only => [:index, :show]
  before_filter :find_partyevent, :only => [:show, :edit, :update, :destroy]

  
  def index
    @partyevents = Partyevent.for(current_user).all
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
    #If its an admin, then he has permission to see and do it all
    @partyevent = if current_user.admin?
      Partyevent.find(params[:id])
    else  
      # readable_by is a scope defines in the PartyEvent model
      Partyevent.readable_by(current_user).find(params[:id])
    end
    
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The Partyevent you were looking for could not be found."
    redirect_to partyevents_path
  end
  
  def check_for_sign_up
    if request.referer == user_registration_url
      redirect_to confirm_user_path #this path was created at routes.rb
    end
  end
  
end
