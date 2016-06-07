class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.integer :totalprice
      t.string :status
      t.integer :installpricepermonth
      t.integer :months
      t.string :equation
      t.references :customer
      t.timestamps
    end
  end
end
