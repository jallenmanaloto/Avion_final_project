class Activity < ApplicationRecord
    validates :activity_type, :name, presence: true
end
