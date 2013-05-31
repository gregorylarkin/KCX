class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :name
      t.timestamps :created_at
      t.timestamps :edited_at
    end
  end
end
