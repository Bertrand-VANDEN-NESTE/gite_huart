class AddDetailsToRooms < ActiveRecord::Migration[7.1]
  def change
    add_column :rooms, :price, :decimal
    add_column :rooms, :capacity, :integer
    add_column :rooms, :bed_count, :integer
    add_column :rooms, :bathroom, :boolean, default: true
    add_column :rooms, :size, :string
    add_column :rooms, :features, :text
    add_column :rooms, :image_url, :string
  end
end

