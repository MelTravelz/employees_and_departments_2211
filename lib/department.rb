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
    @expenses += new_expense_amount.delete_prefix("$").to_i
  end

  
end