class Enquiry < ApplicationRecord
  belongs_to :employee , optional: true
  has_many :followups
end
