class Actor < ActiveRecord::Base
	has_many :movies
	belongs_to :genre
	
	validates :name, presence: true #means name field cannot be blank
	validates :bio, length: {maximum: 500} #bio field must be 500 characters or less
	validates :name, uniqueness: true #cannot duplicate names
end
