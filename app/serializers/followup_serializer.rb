class FollowupSerializer < ActiveModel::Serializer
  attributes :id, :date , :message , :remarks, :followupdate
  belongs_to :enquiry
end
