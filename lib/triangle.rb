
class Triangle
  # write code here
  def initialize(a,b,c)
   @sides = [a, b, c]
  end

  def kind
    @sides.each do |x|
      raise TriangleError if x <= 0 || (@sides.reduce(:+)- 2*x <= 0)
    end
    return :scalene if @sides.uniq.length == 3
    return :isosceles if @sides.uniq.length == 2
    return :equilateral if @sides.uniq.length == 1
  end
end

class TriangleError < StandardError

end
