class Package < ApplicationRecord
  belongs_to :order
  has_many :items, dependent: :destroy

end
