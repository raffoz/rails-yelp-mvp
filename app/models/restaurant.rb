class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japanese french belgian).sort
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end
