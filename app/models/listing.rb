class Listing < ActiveRecord::Base
	  mount_uploader :image, ImageUploader

	  searchkick


	  validates :name, :description, :price, presence: true
	  validates :price, numericality: { greater_than: 0 }
	  validates :image, presence: true

	  belongs_to :user

end
