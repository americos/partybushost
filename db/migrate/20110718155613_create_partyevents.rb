class CreatePartyevents < ActiveRecord::Migration
  def change
    create_table :partyevents do |t|
      t.string :name

      t.timestamps
    end
  end
end
