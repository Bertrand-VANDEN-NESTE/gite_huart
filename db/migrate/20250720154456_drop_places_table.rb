class DropPlacesTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :places
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
