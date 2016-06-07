class InstallmentSerializer < ActiveModel::Serializer
  attributes :id , :date , :amount
  belongs_to :sale
end
