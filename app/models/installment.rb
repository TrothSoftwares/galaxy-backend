class Installment < ApplicationRecord
  belongs_to :sale , optional: true
end
