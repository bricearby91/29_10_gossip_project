class User < ApplicationRecord
  validates :first_name,
		presence: true,
		length: {in: 1..25}
  validates :last_name,
		presence: true
	validates :age,
		numericality: { greater_than: 0 } 
	validates :password,
		presence: true,
		length: { minimum: 6 }
	
  belongs_to :city
  has_many :gossips
  has_many :LierPrivateMessageUsers
  has_many :received_messages,through: :LierPrivateMessageUsers, source: :private_message
  has_many :sent_messages, foreign_key: 'sender_id',class_name: "PrivateMessage"

	has_secure_password
  
end
