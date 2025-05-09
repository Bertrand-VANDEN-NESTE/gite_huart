class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|

      t.timestamps
      t.string :title
      t.text :content
      t.integer :views, default: 0
    end
  end
end
