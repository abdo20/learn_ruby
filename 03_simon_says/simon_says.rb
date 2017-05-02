#write your code here
def echo str
	str
end

def shout str
	str.upcase
end

def repeat str, num=2
	contianer=[]
	num.times do
		contianer<<str
	end
	contianer.join(" ")
end

def start_of_word str, num
	str[0,num]
end

def first_word str
	answer=''
	str.each_char do |x|
		if x == ' '
			break
		else
			answer<<x
		end
	end
	answer
end

def titleize str
	contianer=str.split
	answer=[]
	contianer.each do |x| 
		if x.length>4
			x=x.capitalize
		end
		answer<<x
		end
	answer[0]=(answer[0]).capitalize
	answer.join(" ")
end