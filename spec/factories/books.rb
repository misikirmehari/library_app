FactoryGirl.define do
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    number_of_pages { rand(500) + 10 }
    year { rand(50) + 1960 }
  end
end
