class SaleSerializer < ActiveModel::Serializer
  attributes :id , :totalprice ,:status ,:installpricepermonth ,:months ,:equation 
  belongs_to :customer
  has_many :installments
end
