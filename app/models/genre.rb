class Genre < ActiveRecord::Base
	has_many :actors
	has_many :movies
	
	validates :name, presence: true #means name field cannot be blank
	validates :name, length: {minimum: 3} #name field must be 3 or more characters
end
