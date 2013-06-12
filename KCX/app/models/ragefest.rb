class Ragefest < ActiveRecord::Base

  attr_accessible :costume_id, :party_time, :theme_id
  belongs_to :costume
  belongs_to :theme

 end
