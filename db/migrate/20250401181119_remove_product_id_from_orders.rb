class RemoveProductIdFromOrders < ActiveRecord::Migration[8.0]
  def change
    remove_column :orders, :product_id, :integer
  end
end
