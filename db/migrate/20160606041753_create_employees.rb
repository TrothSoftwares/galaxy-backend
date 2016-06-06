class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :email
      t.timestamps
    end
  end
end
