class Partyevent < ActiveRecord::Base
  has_many :partydetails
  validates :name, :presence => true
end
