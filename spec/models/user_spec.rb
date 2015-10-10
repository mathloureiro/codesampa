require 'rails_helper'

RSpec.describe User, type: :model do
	it 'Create user test' do
		create_user = User.create!(name: 'Henrique', email: "#{SecureRandom.hex(5)}@mail.com", password: '12345678abc@')
		result = User.last.name
		expect(result).to eq 'Henrique'
	end
end