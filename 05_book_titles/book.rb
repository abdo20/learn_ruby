class Book
# write your code here
	def title
  		@title
	end

	def title=(str)
 	 @title = capitalize_title str
	end

	def capitalize_title str
		contianer=str.split
		answer=[]
		contianer.each do |x|
			if ['and','the'].include? x or x.length<3
				if x=='i'
					answer<<x.capitalize
				else
					answer<<x
				end
			else
				answer<<x.capitalize
			end
		end
		answer[0]=answer[0].capitalize
		answer.join " "
	end
end
