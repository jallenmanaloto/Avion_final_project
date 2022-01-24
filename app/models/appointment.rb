class Appointment < ApplicationRecord
    belongs_to :user
    
    validates :atype, :aname, :atime, :adate, presence: true
end
