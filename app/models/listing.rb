class Listing < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "50x>", :thumb => "100x100>" }, :default_url => "default.jpg"
	validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)

validates :name, :description, :price, presence: true
validates :price, numericality: { greater_than: 0 }

belongs_to :user
end
