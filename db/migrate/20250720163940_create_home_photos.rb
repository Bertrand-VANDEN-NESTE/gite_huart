class CreateHomePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :home_photos do |t|
      t.string :slug
      t.string :image_path

      t.timestamps
    end
  end
end
