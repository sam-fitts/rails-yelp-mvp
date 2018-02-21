class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # validates_associated :reviews
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian']}
end
