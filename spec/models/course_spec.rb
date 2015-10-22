require 'rails_helper'

RSpec.describe Course, type: :model do
	# Refactor link 
	# https://gist.github.com/breim/bdc5d31f49350eb97952

	context "All validatios of model" do
		# Name is present?
		it { should validate_presence_of(:name) }

		# User is present?
		it { should validate_presence_of(:user) }

		#  Relations is ok ?
		it { should belong_to :user }
	end
end
