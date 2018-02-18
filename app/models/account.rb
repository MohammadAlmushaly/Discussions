class Account < ApplicationRecord
	has_many :discussions, dependent: :destroy
	validates :email, presence: true
	validates :password, presence: true
end
