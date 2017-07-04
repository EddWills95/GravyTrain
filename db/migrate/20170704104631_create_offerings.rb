class CreateOfferings < ActiveRecord::Migration[5.1]
  def change
    create_table :offerings do |t|
      t.string :title
      t.integer :price
      t.integer :duration
      t.string :img_url
      t.string :company_name
      t.string :location
      t.boolean :featured
      t.timestamps
    end
  end
end
