class Triangle
  # write code here
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate
    case 
    when a == b && a == c
      :equilateral
    when a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def greater_than_zero
    a > 0 && b > 0 && c > 0
  end

  def triangle_inequality
    a + b > c && a + c > b && b + c > a
  end

  def validate
    raise TriangleError unless greater_than_zero && triangle_inequality
  end

  class TriangleError < StandardError
  end
end
