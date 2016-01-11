require('rspec')
require('triangles')

describe("Triangle#triangle") do
  it("creates an instance of the triangle class and check that it is equilateral") do
    equilateral_triangle = Triangle.new(2,2,2)
    expect(equilateral_triangle.equilateral?).to(equal(true))
  end
  it("creates an instance of the triangle class and check that it is isoceles") do
    isoceles_triangle = Triangle.new(2,2,3)
    expect(isoceles_triangle.isosceles?).to(equal(true))
  end
  it("creates an instance of the triangle class and check that it is scalene") do
    scalene_triangle = Triangle.new(2,3,4)
    expect(scalene_triangle.scalene?).to(equal(true))
  end
  it("creates an instance of the triangle class and check that it is a triangle") do
    triangle = Triangle.new(10,15,20)
    expect(triangle.is_triangle?).to(equal(true))
  end
  it("create an instance of the triangle class and check that it is NOT a triangle") do
    triangle = Triangle.new(1,2,3)
    expect(triangle.is_triangle?).to(equal(false))
   end
end
