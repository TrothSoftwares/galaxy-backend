class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name , :address , :contact , :email
  has_many :enquiries
end
