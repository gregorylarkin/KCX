class Costume < ActiveRecord::Base

  has_many :theme
  belongs_to :user

end
