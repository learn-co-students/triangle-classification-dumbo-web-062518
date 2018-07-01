class Triangle
  # write code here
  def initialize(length1, length2, length3)
  	@length1 = length1
  	@length2 = length2
  	@length3 = length3
  end

  def kind
  	return :equilateral if @length1 == @length2 && @length2 == @length3
  	return :isosceles if @length1 == @length2 || @length2 == @length3 || @length1 == @length3
  	return :scalene if @length1 != @length2 && @length2 != @length3 && @length3 != @length1
  	raise TriangleError if @length1 < 0 || @length2 < 0 || @length3 < 0
  	
  	# if person.class != Person
   #    begin
   #      raise TriangleError
   #    rescue TriangleError => error
   #        puts error.message
   #  end

  	
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
