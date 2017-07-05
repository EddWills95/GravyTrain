class AddColumnToBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :confirmed_at, :timestamp
  end
end
