class CreateInstallments < ActiveRecord::Migration[5.1]
  def change
    create_table :installments do |t|
      t.date :date
      t.integer :amount
      t.references :sale
      t.timestamps
    end
  end
end
