class Place < ActiveRecord::Base

	belongs_to :admin_user
	belongs_to :city

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]



	validates :image, presence: true
	validates :description, presence: true
	validates :address, presence: true


def self.search(kind, location_id)
  return scoped unless kind.present? || location_id.present?
  where(['kind LIKE ? AND location_id = ?', kind, location_id])
end
end