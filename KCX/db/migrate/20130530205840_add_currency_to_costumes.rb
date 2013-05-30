class AddCurrencyToCostumes < ActiveRecord::Migration
  def change
    add_column :costumes, :currency, :string
  end
end
