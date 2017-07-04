class Offering < ApplicationRecord
  belongs_to :category, optional: true
end
