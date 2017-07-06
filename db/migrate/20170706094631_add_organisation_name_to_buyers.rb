class AddOrganisationNameToBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :organisation_name, :string
  end
end
