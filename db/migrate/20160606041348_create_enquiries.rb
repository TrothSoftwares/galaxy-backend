class CreateEnquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :email
      t.string :status
      t.date :followupdate
      t.string :remarks
      t.date :date
      t.references :employee
      t.timestamps
    end
  end
end
