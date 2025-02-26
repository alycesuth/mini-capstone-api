class ChangePriceToDecimal < ActiveRecord::Migration[8.0]
  def change
    change_column :products, :price, :decimal, precision: 3, scale: 2
  end
end
