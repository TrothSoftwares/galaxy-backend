class EnquirySerializer < ActiveModel::Serializer
  attributes :id, :name , :address , :contact , :email , :status , :followupdate , :remarks , :date
  belongs_to :employee
  has_many :followups
end
