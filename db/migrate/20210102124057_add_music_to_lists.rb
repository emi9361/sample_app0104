class AddMusicToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :music, :string
  end
end
