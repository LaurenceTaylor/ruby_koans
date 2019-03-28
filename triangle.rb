# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  ord = [a, b, c].sort
  raise TriangleError if ord[0] <= 0 || ord[0] + ord[1] <= ord[2]
  return :equilateral if ord.uniq.size == 1
  return :scalene if ord.uniq.size == 3
  :isosceles

  # Alternative solution
  # a, b, c = [a, b, c].sort
  # raise TriangleError if a <= 0 || a + b <= c
  # ["Must be > 0", :equilateral, :isosceles, :scalene][[a, b, c].uniq.size]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
