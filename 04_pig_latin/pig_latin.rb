#write your code here

def translate_one_word word
	if "aioeu".include? word[0]
		return word+"ay"
	elsif "aioeu".include? word[1]
		if word[0..1]=='qu'
			word=word+'quay'
			word[0..1]=''
		else
			word=word+word[0]+'ay'
			word[0]=""
		end
		return word
	elsif "aioeu".include? word[2]
		if word[1..2]=='qu'
			word=word+word[0..2]+'ay'
			word[0..2]=""
		else
			word=word+word[0..1]+'ay'
			word[0..1]=""
		end
		return word
	else
		word=word+word[0..2]+'ay'
		word[0..2]=""
		return word
	end
end
def capitalized? word
	if "ABDQWERTYUIOPLKJHGFVNMSZXC".include? word[0]
 		word=word.downcase
 		return true
 	else
 		return false
	end
end

def translate str
	ary=str.split
	answer=[]
	ary.each do |x|
		if capitalized? x
			answer<<translate_one_word(x).capitalize
		else
			answer<<translate_one_word(x)
		end
		
	end
	answer.join(" ")
end