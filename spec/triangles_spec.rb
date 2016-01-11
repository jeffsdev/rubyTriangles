require('rspec')
require('triangles')

describe("Triangle#triangle") do
  it("creates an instance of the triangle class and check that it is equilateral") do
    equilateral_triangle = Triangle.new(2,2,2)
    expect(equilateral_triangle.equilateral?).to(equal(true))
  end

end
