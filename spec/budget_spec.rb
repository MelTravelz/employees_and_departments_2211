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
  # design choice to change year to integer in case other calculation might be needed between years

  it "can #add_department to its departments" do
    budget = Budget.new("2022") 
    
    customer_service = Department.new("Customer Service")   
    law_service = Department.new("Law Service")   

    budget.add_department(customer_service)
    budget.add_department(law_service)

    expect(budget.departments).to eq([customer_service, law_service])
  end

  it "can list all #low_expense_departments with expenses less than $500" do
    budget = Budget.new("2022") 
    
    customer_service = Department.new("Customer Service")   
    law_service = Department.new("Law Service")   
    social_service = Department.new("Social Service")   
    health_service = Department.new("Health Service")   

    budget.add_department(customer_service)
    budget.add_department(law_service)
    budget.add_department(social_service)
    budget.add_department(health_service)

    customer_service.expense(300)
    law_service.expense(1000)
    social_service.expense(400)
    health_service.expense(500)

    expect(budget.low_expense_departments).to eq([customer_service, social_service])
  end

  it "can list all #employee_salaries" do
    budget = Budget.new("2022") 
      
    customer_service = Department.new("Customer Service")   
    law_service = Department.new("Law Service")  

    budget.add_department(customer_service)
    budget.add_department(law_service)
    
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "$90000"})  
    ben = Employee.new({name: "Ben Matlock", age: "60", salary: "$250000"})
    saul = Employee.new({name: "Saul Goodman", age: "48", salary: "$200000"}) 

    customer_service.hire(bobbi)
    customer_service.hire(aaron) 
    law_service.hire(ben)
    law_service.hire(saul) 

    expected = {
      bobbi => 100000,
      aaron => 90000,
      ben => 250000,
      saul => 200000
    }
    expect(budget.employee_salaries).to eq(expected)
    # expect(budget.employee_salaries).to eq([100000, 90000, 250000, 200000])
  end

  #### for Iteration 4 - please see PSEUDOCODE in department.rb ####

  # They would like to track which employee is responsible for an expense.
  # Be able to total all expenses for which a specific employee is responsible.

end