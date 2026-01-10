class AddSlugToRooms < ActiveRecord::Migration[7.1]
  def change
    add_column :rooms, :slug, :string
  end
end
