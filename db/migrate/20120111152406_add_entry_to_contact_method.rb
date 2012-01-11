class AddEntryToContactMethod < ActiveRecord::Migration
  def up
    add_column :contacts, :entry, :string
  end
  def down
    remove_column :contacts, :entry
  end
end
