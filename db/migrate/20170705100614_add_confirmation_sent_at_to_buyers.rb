class AddConfirmationSentAtToBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :confirmation_sent_at, :datetime
  end
end
