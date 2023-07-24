class Order < ApplicationRecord
  has_many :packages, dependent: :destroy
  has_many :items, through: :packages

  validates :name, presence: true
end
