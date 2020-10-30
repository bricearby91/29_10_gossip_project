class City < ApplicationRecord
	validates :name,
		presence: true,
		uniqueness: true
	validates :zip_code,
		presence: true,
		length: {in: 4..6}
	
  has_many :users
end
