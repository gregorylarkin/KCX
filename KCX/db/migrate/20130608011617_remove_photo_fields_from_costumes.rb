class RemovePhotoFieldsFromCostumes < ActiveRecord::Migration
  def up
    remove_column :costumes, :photo_updated_at
    remove_column :costumes, :photo_file_size
    remove_column :costumes, :photo_content_type
    remove_column :costumes, :photo_file_name
  end

  def down
    add_column :costumes, :photo_updated_at, :datetime
    add_column :costumes, :photo_file_size, :integer
    add_column :costumes, :photo_file_name, :string
    add_column :costumes, :photo_content_type, :string
  end
end
