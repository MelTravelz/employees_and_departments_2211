class Budget
	attr_reader :year,
              :departments
	
	def initialize(year)
				@year = year.to_i
        @departments = []
	end

end