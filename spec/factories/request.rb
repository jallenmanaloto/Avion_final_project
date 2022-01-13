FactoryBot.define do
    factory(:request) do
        request_type { "Certification" }
        name { "Health Certification" }
        user_id { 1 }
    end
end