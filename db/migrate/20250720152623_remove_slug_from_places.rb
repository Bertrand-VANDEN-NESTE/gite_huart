class RemoveSlugFromPlaces < ActiveRecord::Migration[7.2]
  def change
    if column_exists?(:places, :slug)
      remove_column :places, :slug
    end
  end
end
