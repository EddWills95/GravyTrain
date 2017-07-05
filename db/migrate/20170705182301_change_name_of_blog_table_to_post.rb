class ChangeNameOfBlogTableToPost < ActiveRecord::Migration[5.1]
  def change
    rename_table :blogs, :posts
  end
end
