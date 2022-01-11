class Request < ApplicationRecord
    belongs_to :user
    validates :name, :request_type, presence: true
end
