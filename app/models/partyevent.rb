class Partyevent < ActiveRecord::Base
  has_many :partydetails, :dependent => :delete_all #we could also use :destroy or :nullify, for this case lets delete all
  validates :name, :presence => true
  
  has_many :permissions, :as => :thing #this will link our partyevents to the "thing" associaction on the Permission objects.
  #Scope used on private find methog on the Partyevents_controller
  scope :readable_by, lambda{ |user|
    joins(:permissions).where(:permissions => { :action => "view", :user_id => user.id })
  }
  
  def self.for(user)
    user.admin? ? Partyevent : Partyevent.readable_by(user)
  end
  
  
end
