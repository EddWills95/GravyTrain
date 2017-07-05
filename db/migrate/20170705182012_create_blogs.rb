class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :img_url
      t.text :content

      t.timestamps
    end
  end
end
