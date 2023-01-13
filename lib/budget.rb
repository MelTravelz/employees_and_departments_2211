class Budget
	attr_reader :year,
              :all_departments
	
	def initialize(year)
				@year = year.to_i
        @all_departments = []
	end

end