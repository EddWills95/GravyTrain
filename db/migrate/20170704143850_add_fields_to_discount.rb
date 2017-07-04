class AddFieldsToDiscount < ActiveRecord::Migration[5.1]
  def change
    add_column :discounts, :offering_id, :integer
  end
end
