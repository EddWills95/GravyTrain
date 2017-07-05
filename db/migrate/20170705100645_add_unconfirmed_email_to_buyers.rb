class AddUnconfirmedEmailToBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :unconfirmed_email, :string
  end
end
