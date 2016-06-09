class SaleSerializer < ActiveModel::Serializer
  attributes :id , :totalprice ,:status ,:installpricepermonth ,:months ,:equation ,:downpayment , :asset , :createdat
  belongs_to :customer
  has_many :installments


  def createdat
    object.created_at
  end

end
