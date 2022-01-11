class Activity < ApplicationRecord
    belongs_to :user
    validates :activity_type, :name, presence: true
end
