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
end