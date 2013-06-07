class AddAttachmentPhotoToCostumes < ActiveRecord::Migration
  def self.up
    change_table :costumes do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :costumes, :photo
  end
end
