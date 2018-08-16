FactoryBot.define do
  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    title Faker::Job.title
    description Faker::Hipster.paragraph(5)
    twitter_account "TwitterSupport"
    image Faker::Placeholdit.image("200x200")
  end
end
