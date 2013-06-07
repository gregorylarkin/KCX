class RemovePartyTimeFromRagefests < ActiveRecord::Migration
  def up
    remove_column :ragefests, :party_time
  end

  def down
    add_column :ragefests, :party_time, :datetime
  end
end
