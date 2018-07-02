require 'pry'

class Triangle

attr_accessor :equilateral, :isosceles, :scalene

@triangle_array = []

def initialize(side_1, side_2, side_3)
  @side_1 = (side_1)
  @side_2 = (side_2)
  @side_3 = (side_3)
end

def kind

  if inequality_test
    raise TriangleError
  elsif greater_than_zero
    raise TriangleError
  elsif equilateral_test
      :equilateral
    elsif isosceles_test
      :isosceles
    elsif scalene_test
      :scalene
  end
end

def equilateral_test
  @side_1 == @side_2 && @side_2 == @side_3 && @side_3 == @side_1
end

def isosceles_test
  @side_1 == @side_2||@side_2 == @side_3 || @side_3 == @side_1
end

def scalene_test
  @side_1 != @side_2 && @side_2 != @side_3 && @side_3 != @side_1
end

def greater_than_zero
  @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
end

def inequality_test
  @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2
end


class TriangleError < StandardError
end


end


# pry.Start
