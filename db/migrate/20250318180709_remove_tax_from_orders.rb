class RemoveTaxFromOrders < ActiveRecord::Migration[8.0]
  def change
    remove_column :orders, :tax, :decimal
  end
end
