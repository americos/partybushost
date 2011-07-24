class CreatePartydetails < ActiveRecord::Migration
  def change
    create_table :partydetails do |t|
      t.string :title
      t.text :description
      t.references :partyevent

      t.timestamps
    end
    add_index :partydetails, :partyevent_id
  end
end
