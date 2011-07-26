class Partyevent < ActiveRecord::Base
  has_many :partydetails, :dependent => :delete_all #we could also use :destroy or :nullify, for this case lets delete all
  validates :name, :presence => true
end
