class Discussion < ApplicationRecord
  belongs_to :account
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
end
