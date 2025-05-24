class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :professional, polymorphic: true
end
