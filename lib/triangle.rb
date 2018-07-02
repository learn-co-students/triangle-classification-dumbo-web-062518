class Triangle
  # write code here
  attr_reader :a, :b, :c
  def initialize(a, b, c)
  	@a = a
  	@b = b
  	@c = c
  end

  def kind
    validate_triangle
  	return :equilateral if @a == @b && @b == @c
  	return :isosceles if @a == @b || @b == @c || @a == @c
  	return :scalene if @a != @b && @b != @c && @c != @a
  	# raise TriangleError if @a < 0 || @b < 0 || @c < 0
    # raise TriangleError if real_triangle.include?(false)
  end


  def validate_triangle
    real_triangle = [(@a + @b > @c), (@a + @c > @b), (@b + @c > @a)]
    [@a, @b, @c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
    # triangle error code
    
  end

end





# class Triangle
#   attr_reader :a, :b, :c
#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end

#   def kind
#     validate_triangle
#     if a == b && b == c
#       :equilateral
#     elsif a == b || b == c || a == c
#       :isosceles
#     else
#       :scalene
#     end
#   end

#   def validate_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each { |s| real_triangle << false if s <= 0 }
#     raise TriangleError if real_triangle.include?(false)
#   end

#   class TriangleError < StandardError
#   end
  
# end
