
def random_status
  ['new', 'in progress', 'closed', 'bad'].sample
end

FactoryGirl.define do
  factory :lead do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
    phone Faker::PhoneNumber.phone_number
    status random_status
    notes Faker::HipsterIpsum.words(10).join(' ')
  end

end