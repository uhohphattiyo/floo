class Place < ActiveRecord::Base

#Relationships
	belongs_to :admin_user
	belongs_to :city
	belongs_to :kind

	

#Valdiations
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]



	validates :image, presence: true
	validates :description, presence: true
	validates :address, presence: true

	
	geocoded_by :address 
	after_validation :geocode,  :if => :address_changed?

#Scope/Search
	def self.search(kind_id, location_id)
	  return scoped unless kind_id.present? || location_id.present?
	  where(['kind_id = ? AND location_id = ?', kind_id, location_id])
	end
end