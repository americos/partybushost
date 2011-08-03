class Partydetail < ActiveRecord::Base
  belongs_to :partyevent
  belongs_to :user
  
  validates :title, :presence =>true
  validates :description, :presence =>true, :length => { :minimum => 10 }
end
