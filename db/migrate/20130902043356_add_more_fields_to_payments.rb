class AddMoreFieldsToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :payment_amount, :float
    add_column :payments, :cvv_code, :numeric
    add_column :payments, :expiry_date, :datetime
  end
end
