class Appointment < ApplicationRecord
    belongs_to :user
    
    validate :atype, :aname, :atime, :adate, presence: true
end
