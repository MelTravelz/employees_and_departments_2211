require 'rspec'
require './lib/employee'
require './lib/department'
require './lib/budget'

RSpec.describe Budget do

  it 'exists' do
    budget = Budget.new("2022")   

    expect(budget).to be_instance_of(Budget)
  end

  it "has attributes" do
    budget = Budget.new("2022")   

    expect(budget.year).to eq(2022)
    expect(budget.all_departments).to eq([])
  end

  # it "can list #all_departments" do
  #   budget = Budget.new("2022")   

  #   expect(budget.all_departments).to eq([])
  # end

end