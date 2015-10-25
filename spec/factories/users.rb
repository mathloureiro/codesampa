require 'faker'

FactoryGirl.define do
	factory :user do |f|
		f.name {Faker::Name.name}
		f.email {Faker::Internet.free_email}
		f.password {Faker::Internet.password}
		    
		factory :admin do
      		admin true
    	end
    	
	end
end