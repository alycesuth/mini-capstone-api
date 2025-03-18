class RemoveSubtotalFromOrders < ActiveRecord::Migration[8.0]
  def change
    remove_column :orders, :subtotal, :decimal
  end
end
