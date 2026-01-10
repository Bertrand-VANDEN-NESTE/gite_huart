class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.string :distance
      t.string :image_url

      t.timestamps
    end
  end
end
