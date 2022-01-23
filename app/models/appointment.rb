class Appointment < ApplicationRecord
    belongs_to :user
    validate :appointment_type, :appointment_name, :appointment_date, presence: true
end
