require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @a = params.fetch("a_field")
  @b = params.fetch("b_field")
  @c = params.fetch("c_field")
  user_case_triangle = Triangle.new( @a, @b, @c )

  if user_case_triangle.is_triangle?
    if user_case_triangle.equilateral?
      @result_triangle = "Equalateral Triangle"
    elsif user_case_triangle.isosceles?
      @result_triangle = "Isosceles Triangle"
    elsif user_case_triangle.scalene?
      @result_triangle = "Scalene Triangle"
    end
  else
    @result_triangle = "Not a valid triangle."
  end
  erb(:result)
end
