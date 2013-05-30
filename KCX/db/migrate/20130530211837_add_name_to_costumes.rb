class AddNameToCostumes < ActiveRecord::Migration
  def change
    add_column :costumes, :name, :string
  end
end
