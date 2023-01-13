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
    expect(budget.departments).to eq([])
  end

  it "can #add_department to its departments" do
    budget = Budget.new("2022") 
    
    customer_service = Department.new("Customer Service")   
    law_service = Department.new("Law Service")   

    budget.add_department(customer_service)
    budget.add_department(law_service)

    expect(budget.departments).to eq([customer_service, law_service])
  end

end