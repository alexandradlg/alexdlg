FactoryBot.define do
  factory :studio do
    name { "studio" }
    price { 1000 }
  end

  factory :tenant do
    email { "coucou@rspec.com" }
  end

  factory :stay do
    start_date { Time.zone.today }
    end_date { Time.zone.today + 15 }
  end
end
