class FollowupSerializer < ActiveModel::Serializer
  attributes :id, :date , :message , :followupdate
  belongs_to :enquiry
end
