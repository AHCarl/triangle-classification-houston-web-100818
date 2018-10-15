class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    self.side1 = side1
    self.side2 = side2
    self.side3 = side3
  end
  
  def kind
    sides = [side1, side2, side3]
    sides.sort!
    if ((sides[0] + sides[1]) <= sides[2])  || ((side1 <= 0 || side2 <= 0) || side3 <= 0) 
        raise TriangleError.new("Please enter a valid triangle")
    elsif side1 == side2 && side2 == side3
      return :equilateral
    elsif (side1 == side2 || side1 == side3) || side2 == side3
      return :isosceles
    else 
      return :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end
