FactoryGirl.define do
  factory :device do
    sequence(:name) { |n| "Electronic Widget #{n}"}
    manufacturer "Sanyo"
  end
end
