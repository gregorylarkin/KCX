class CreateCostumes < ActiveRecord::Migration
  def change
    create_table :costumes do |t|
      t.string :description
      t.timestamps :created_at
      t.timestamps :edited_at
    end
  end
end
