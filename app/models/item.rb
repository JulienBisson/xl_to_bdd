class Item < ApplicationRecord
  belongs_to :package

  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }, presence: true
  validates :ref, uniqueness: true, numericality: true, presence: true
  validates :warranty, inclusion: { in: [true, false] }
  validates :duration, numericality: { greater_than: 0 }, presence: true
end
