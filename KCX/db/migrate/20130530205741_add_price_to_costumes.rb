class AddPriceToCostumes < ActiveRecord::Migration
  def change
    add_column :costumes, :price, :float
  end
end
