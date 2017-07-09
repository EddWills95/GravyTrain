class Offering < ApplicationRecord
  belongs_to :category, optional: true
  has_many :discounts

  belongs_to :provider, optional: true
end
