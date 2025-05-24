class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments, source: :professional, source_type: "Physician"
  has_many :life_coaches, through: :appointments, source: :professional, source_type: "LifeCoach"
  has_many :chefs, through: :appointments, source: :professional, source_type: "Chef"
end
