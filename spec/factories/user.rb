FactoryBot.define do
    factory(:user) do
        last_name { "Doe" }
        first_name { "John" }
        middle_name { "M" }
        email { "test01@email.com" }
        password { "password1234" }
    end
end