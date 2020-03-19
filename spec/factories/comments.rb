FactoryBot.define do
  factory :comment do
    autor { "mike" }
    sequence(:body) { |n| "comment body #{n}" }
  end
end