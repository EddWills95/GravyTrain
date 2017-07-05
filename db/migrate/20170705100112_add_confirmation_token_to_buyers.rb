class AddConfirmationTokenToBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :confirmation_token, :string
  end
end
