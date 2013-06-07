class AddPhotoRemoteUrlToCostume < ActiveRecord::Migration
  def change
    add_column :costumes, :photo_remote_url, :string
  end
end
