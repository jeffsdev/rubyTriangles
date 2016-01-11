require('pry')
class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a.to_i
    @b = b.to_i
    @c = c.to_i
   end

   define_method(:equilateral?) do
     return (@a == @b) && (@b == @c)
   end

   define_method(:isosceles?) do
     if self.equilateral?
       return false
     end
     return (@a == @b) || (@a == @c) || (@b == @c)
   end

   define_method(:scalene?) do
     if self.equilateral? || self.isosceles?
       return false
     end
     return true
   end

   define_method(:is_triangle?) do
     return  !( (@a + @b) <= @c || (@b + @c) <= @a || (@c + @a) <= @b )
   end
end
