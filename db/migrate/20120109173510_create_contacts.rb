class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :type
      t.string :field1
      t.string :field2

      t.timestamps
    end
  end
end
