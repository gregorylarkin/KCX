class User < ActiveRecord::Base

  has_many :costume
  has_secure_password

end
