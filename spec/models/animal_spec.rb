require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'is valid with valid attributes' do
    animal = Animal.create(common_name:'Cat validation', scientific_binomial:'Meowy mix alot')
    expect(animal).to be_valid
  end

  it 'is not valid without a common_name' do
    animal = Animal.create(scientific_binomial:'Meowy mix alot')
    expect(animal.errors[:common_name]).to_not be_empty
  end

  it 'is not valid without a scientific_binomial' do
    animal = Animal.create(common_name:'cat validation')
    expect(animal.errors[:scientific_binomial]).to_not be_empty
  end
end

  
