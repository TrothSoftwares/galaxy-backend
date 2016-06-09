class AddColumnsToSales < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :downpayment, :integer
    add_column :sales, :asset, :string
  end
end
