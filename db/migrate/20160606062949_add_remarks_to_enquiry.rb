class AddRemarksToEnquiry < ActiveRecord::Migration[5.1]
  def change
    add_column :followups, :remarks, :string
  end
end
