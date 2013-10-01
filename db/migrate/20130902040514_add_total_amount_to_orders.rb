class AddTotalAmountToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total_amount, :float
  end
end
