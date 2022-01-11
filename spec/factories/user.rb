FactoryBot.define do
    factory(:user) do
        name { "test01" }
        email { "test01@email.com" }
        password { "password1234" }
    end
end