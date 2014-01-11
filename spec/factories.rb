FactoryGirl.define do
  factory :user do
    first_name     "Chris"
    last_name   "George"
    email    "cgeorge110@gmail.com"
    password "george"
    password_confirmation "george"
  end
end