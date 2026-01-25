class RemoveSlugFromPlaces < ActiveRecord::Migration[7.1]
  def up
    if column_exists?(:places, :slug)
      remove_column :places, :slug
    end
  end

  def down
    unless column_exists?(:places, :slug)
      add_column :places, :slug, :string
    end
  end
end
