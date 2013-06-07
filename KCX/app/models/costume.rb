class Costume < ActiveRecord::Base



  has_many :theme
  belongs_to :user
  attr_accessible :description, :price, :currency, :name,
                  :photo_file_name, :photo_content_type, :photo_file_size
  has_attached_file :photo
end
