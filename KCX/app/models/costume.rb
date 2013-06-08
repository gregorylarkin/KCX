
class Costume < ActiveRecord::Base

require 'open-uri'

has_many :ragefests
  has_many :themes, :through => :ragefests
  belongs_to :user


private
  def image_url_provided?
    !self.image_url.blank?
  end

  def download_remote_image
    self.image = do_download_remote_image
    self.image_remote_url = image_url
  end

  def do_download_remote_image
    io = open(URI.parse(image_url))
    def io.original_filename; base_uri.path.split('/').last; end
    io.original_filename.blank? ? nil : io
  rescue # catch url errors with validations instead of exceptions (Errno::ENOENT, OpenURI::HTTPError, etc...)
  end

end
