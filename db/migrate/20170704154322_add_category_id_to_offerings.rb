class AddCategoryIdToOfferings < ActiveRecord::Migration[5.1]
  def change
    add_column :offerings, :category_id, :integer
  end
end
