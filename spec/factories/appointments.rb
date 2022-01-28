FactoryBot.define do
  factory :appointment do
    atype { "Certification" }
    aname { "Health Certificate" }
    adate { "01-01-2020" }
    atime { '8:00AM' }
  end
end
