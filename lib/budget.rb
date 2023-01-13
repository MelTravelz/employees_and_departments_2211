class Budget
	attr_reader :year,
              :departments
	
	def initialize(year)
				@year = year.to_i
        @departments = []
	end

  def add_department(department)
    departments.push(department)
  end

  def low_expense_departments
    departments.find_all do |dept| 
      dept.expenses < 500
    end
  end

  def employee_salaries
    hash = Hash.new(0)

    departments.each do |dept|
      dept.employees.each do |employee|
        hash[employee] = employee.salary
      end
    end

    hash

    # require 'pry'; binding.pry
    # departments[0].employees[0] => employee object
    # departments[0].employees[0].salary => 200000
  end

end