class AddTypeColumnToBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :type, :string
  end
end
