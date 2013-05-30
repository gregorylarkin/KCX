class AddThemeIdToCostumes < ActiveRecord::Migration
  def change
    add_column :costumes, :theme_id, :integer
  end
end
