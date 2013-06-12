class User < ActiveRecord::Base

  has_many :costume
  has_secure_password

  validates :email, presence: true
  validates :phone, presence: true

end
