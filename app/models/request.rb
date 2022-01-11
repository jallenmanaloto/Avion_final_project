class Request < ApplicationRecord
    validates :name, :request_type, presence: true
end
