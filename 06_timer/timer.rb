class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
  	@seconds=0
  	
  end

  def padded num
  	if num.to_s.length==1
  		"0#{num}"
  	else
  		"#{num}"
  	end
  end

  

  def time_string
  	minutes=@seconds/60
  	@seconds=@seconds%60
  	hours=minutes/60
  	minutes=minutes%60
  	"#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end
end
