class Product < ApplicationRecord
  include ImageUploader::Attachment.new(:image)

  def self.search(search)
   where("name LIKE ?", "%#{search}%") 
  end
end
