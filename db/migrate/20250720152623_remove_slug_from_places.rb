class RemoveSlugFromPlaces < ActiveRecord::Migration[7.1]
  def change
    remove_column :places, :slug, :string
  end
end
