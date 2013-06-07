class CreateRagefests < ActiveRecord::Migration
  def change
    create_table :ragefests do |t|
      t.integer :costume_id
      t.integer :theme_id
      t.datetime :party_time

      t.timestamps
    end
  end
end
