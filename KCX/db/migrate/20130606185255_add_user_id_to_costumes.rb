class AddUserIdToCostumes < ActiveRecord::Migration
  def change
    add_column :costumes, :user_id, :integer
  end
end
