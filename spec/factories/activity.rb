FactoryBot.define do
    factory(:activity) do
        activity_type { "Visit" }
        name { "SM Megamall" }
        user_id { 1 }
    end
end