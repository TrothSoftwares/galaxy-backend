class CustomerSerializer < ActiveModel::Serializer
  attributes :id ,:name , :address , :contact , :email
  has_many :sales
end
