
class Costume < ActiveRecord::Base

require 'open-uri'

  has_many :ragefests
  has_many :themes, :through => :ragefests
  belongs_to :user
  attr_accessible :theme_ids, :theme_names
  accepts_nested_attributes_for :ragefests, :allow_destroy => true

  validates :image_remote_url, :format => URI::regexp(%w(http https))

  validates_format_of :image_remote_url,
    :with => %r{\.(gif|jpe?g|png)$}i,
    :message => "must have an image extension"

end
