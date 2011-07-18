class Partyevent < ActiveRecord::Base
  validates :name, :presence => true
end
