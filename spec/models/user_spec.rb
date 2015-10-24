require 'rails_helper'

RSpec.describe User, type: :model do
	# Jerk test https://gist.github.com/breim/f3cdeff398015c2ee8d3

	context "All validatios of model" do
		# Name is present?
		it { should validate_presence_of(:name) }

		# User have email?
		it { should validate_presence_of(:email) }

		# User have password?
		it { should validate_presence_of(:password) }

		# User password lenght
		it { should validate_length_of(:password).is_at_least(5) }

		it 'Fill email in name' do
			name_is_not_email = FactoryGirl.build(:user, name: 'email@of.user')
			expect(name_is_not_email.valid?).to be_falsey
		end
	end

end