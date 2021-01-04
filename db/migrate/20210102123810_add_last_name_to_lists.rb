class AddLastNameToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :lastname, :string
  end
end
