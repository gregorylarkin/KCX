class FixImageColumnNames < ActiveRecord::Migration
  def up
    rename_column :costumes, :photo_remote_url, :image_remote_url
  end

  def down
  end
end
