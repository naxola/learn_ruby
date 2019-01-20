class Timer
  #write your code here

  def initialize
    @seconds = 0
  end
  def seconds
    return @seconds
  end
  def seconds=(s)
    @seconds = s
  end
  def time_string
    seconds = @seconds % 60
  	minutes = @seconds / 60
  	hours = minutes / 60
  	minutes = minutes - (hours * 60)

    return "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end
  def padded(num)
  	if num.to_s.length < 2
  		return "0" + num.to_s
  	else
  		return num.to_s
  	end
  end
end
