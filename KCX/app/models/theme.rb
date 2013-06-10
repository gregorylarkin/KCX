class Theme < ActiveRecord::Base

  has_many :ragefests 
  has_many :costumes, :through => :ragefests

end
