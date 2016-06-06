class Followup < ApplicationRecord
  belongs_to :enquiry , optional: true
end
