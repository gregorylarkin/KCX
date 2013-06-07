class RemoveThemeIdFromCostumes < ActiveRecord::Migration
  def up
    remove_column :costumes, :theme_id
  end

  def down
    add_column :costumes, :theme_id, :integer
  end
end
