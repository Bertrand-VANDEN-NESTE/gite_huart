class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.string :title
      t.text :description
      t.text :image_urls
      t.text :activities
      t.text :services

      t.timestamps
    end
  end
end
