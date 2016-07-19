FactoryGirl.define do
  factory :customer do
    first_name { Faker::Name.first_name}
    last_name { Faker::Name.last_name}
    phone {Faker::PhoneNumber.phone_number}
    email {Faker::Internet.email("#{first_name} #{last_name}")}

  end
end
