require 'rspec'
require './lib/employee'
require './lib/department'

RSpec.describe Department do

  it 'exists' do
    customer_service = Department.new("Customer Service")   

    expect(customer_service).to be_instance_of(Department)
  end

  it "has attributes" do
    customer_service = Department.new("Customer Service")   

    expect(customer_service.name).to eq("Customer Service")
    expect(customer_service.employees).to eq([])
  end

  it "can #hire new emplyees" do
    customer_service = Department.new("Customer Service") 
    
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  

    customer_service.hire(bobbi)
    customer_service.hire(aaron) 

    expect(customer_service.employees).to eq([bobbi, aaron])
  end

  it "can #hire new emplyees" do
    customer_service = Department.new("Customer Service") 
    
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  

    customer_service.hire(bobbi)
    customer_service.hire(aaron) 

    expect(customer_service.expenses).to eq(0)
  end

end