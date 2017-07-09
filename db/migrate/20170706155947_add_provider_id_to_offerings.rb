class AddProviderIdToOfferings < ActiveRecord::Migration[5.1]
  def change
    add_column :offerings, :provider_id, :integer
  end
end
