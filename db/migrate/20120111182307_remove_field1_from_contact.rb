class RemoveField1FromContact < ActiveRecord::Migration
  def up
    remove_column :contacts, :field1
  end

  def down
    add_column :contacts, :field1, :string
  end
end
