class RemoveLastNameFromLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :lastname, :string
  end
end
