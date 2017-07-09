class Provider < Buyer
  validates :organisation_name, presence: true

  has_many :offerings
end
