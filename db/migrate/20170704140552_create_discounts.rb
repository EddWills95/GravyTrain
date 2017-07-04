class CreateDiscounts < ActiveRecord::Migration[5.1]
  def change
    create_table :discounts do |t|
      t.integer :num_people
      t.integer :percentage
      t.timestamps
    end
  end
end
