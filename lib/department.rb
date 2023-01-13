class Department
	attr_reader :name,
              :employees

  attr_accessor :expenses
	
	def initialize(name)
    @name = name
    @employees = []
    @expenses = 0
	end

  def hire(employee)
    employees.push(employee)
  end

  def expense(new_expense_amount)
    @expenses += new_expense_amount
  end

  # Iteration 4 - PSEUDO CODE: 
  # make a .make_expense method to employee class? as an attribute?
  #=> no, they would not have this by default (ie before they were hired)

  # make .employee_make_expense method to department class? 
  # [empolyee, expense_amount] ex: [bobbi, 100]
  #=> no, this doesn't do anything functional

  # make .add_employee_expense for the department class (similar to #expense)
  # customer_service.add_employee_expense([bobbi, 100])
  #  inside this method it would  @expenses += index[1]

  # however, how to we keep/list the [employee, amount] array? A dept would track this.

  # or can we use #expense method inside? 
  #=> no, departments can have their own expenses, while employees can make expenses for the dept too


  # iterate through empolyees to calculate all make_expense for that employee
  # key=empolyee value=expense_anmount

  # make helper to pull new_expense_amount out of key/value
  
end