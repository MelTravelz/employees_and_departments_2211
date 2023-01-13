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

  # PSEUDOCODE: 
  # make a .make_expense method to employee class? as an attribute?
  #=> no, they would not have this by default (ie before they were hired)

  # make .employee_make_expense method to department class? 
  # [empolyee, expense_amount] ex: [bobbi, 100]
  #=> no, this doesn't do anything functional

  # or can we use #expense method somewhere? 
  #=> no, departments can have their own expenses, while employees can make expenses for the dept too

  # make .add_employee_expense for the department class (similar to #expense)
  # customer_service.add_employee_expense([bobbi, 100])
  #  inside this method it would  @expenses += index[1]

  # however, how to we keep a list the [employee, amount] array? A dept would track this.
  # ok... make an [ array of [array elements]] so add_employee_expense([bobbi, 100])
  # would add that array element into an attribute array holding all expenses_by_empolyee ?
  # you'd also have to be able to add new expenses made by the same employee (maybe it would be easier as hash?)
  # then make another helper that sums up all expenses and adds to expenses 

  #then in budget class, it could call on each depts' @expenses_by_empolyee array?
  # and make a hash with { department => [employee, total_expenses], [employee, total_expenses]}

  # or can we use #expense method inside? 
  #=> no, departments can have their own expenses, while employees can make expenses for the dept too

  # I feel like I'm overcomplicating this.
  # Just Learned: we are allowed to refactor previous methods and modify the tests accordingly
end