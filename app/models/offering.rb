class Offering < ApplicationRecord
  belongs_to :category, optional: true
  has_many :discounts
end
