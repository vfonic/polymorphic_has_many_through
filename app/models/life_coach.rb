class LifeCoach < ApplicationRecord
  has_many :appointments, as: :professional
  has_many :patients, through: :appointments
end
