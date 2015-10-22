require 'faker'

FactoryGirl.define do
	factory :course do
		name Faker::Name.name
		association :user
	end
end