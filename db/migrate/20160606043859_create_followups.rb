class CreateFollowups < ActiveRecord::Migration[5.1]
  def change
    create_table :followups do |t|
      t.date :date
      t.text :message
      t.date :followupdate
      t.references :enquiry
      t.timestamps
    end
  end
end
