#write your code here
def add num1,num2
	num1+num2
end

def subtract num1,num2
	num1-num2
end

def sum array
	total=0
	array.each do |x|
		total=total+x
	end
	total
end

def multiply num1,num2
	num1*num2
end

def power num1,num2
	num1**num2
end

def factorial num
	if num<3
		return num
	else
		iterator=num-1
		total=1
		iterator.times do
			total=total*num
			num=num-1
		end
		return total
	end

end