class User < ActiveRecord::Base

  has_many :costume
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
end
