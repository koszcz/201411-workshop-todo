require 'rails_helper'

RSpec.describe Car, type: :model do

  it { is_expected.to validate_presence_of(:brand) }
  it { is_expected.to validate_presence_of(:model) }

	it 'allows to create a car' do
		car = Car.create!(brand: 'Fiat', model: '126p')

    expect(car.brand).to eq('Fiat')
    expect(car.model).to eq('126p')    
	end

  it 'return a full name' do
    car = Car.create!(brand: 'Fiat', model: '126p')

    expect(car.full_name).to eq('Fiat 126p')    
  end
	
end