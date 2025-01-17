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

  it "can have #expenses" do
    customer_service = Department.new("Customer Service") 
    
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  

    customer_service.hire(bobbi)
    customer_service.hire(aaron) 

    expect(customer_service.expenses).to eq(0)
  end
  # Note: I an unclear if a new attribute is added later in interaction pattern if it needs its own test
  # or if I can add it to the "has attributes" test. I decided to leave it here for now 
  # to ensure instructors can see it was tested for in the order of the interaction pattern. 

  it "can add an #expense to its expenses" do
    customer_service = Department.new("Customer Service") 
    
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  

    customer_service.hire(bobbi)
    customer_service.hire(aaron) 

    customer_service.expense(100)
    customer_service.expense(25)     
    
    expect(customer_service.expenses).to eq(125)
  end

end