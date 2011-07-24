class Partydetail < ActiveRecord::Base
  belongs_to :partyevent
  
  validates :title, :presence =>true
  validates :description, :presence =>true, :length => { :minimum => 10 }
end
