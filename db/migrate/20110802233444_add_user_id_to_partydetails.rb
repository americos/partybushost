class AddUserIdToPartydetails < ActiveRecord::Migration
  def change
    add_column :partydetails, :user_id, :integer
  end
end
