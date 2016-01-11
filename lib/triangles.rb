class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
   end

   define_method(:equilateral?) do
     return (@a == @b) && (@b == @c)
   end

   define_method(:isoceles?) do
     if self.equilateral?
       return false
     end
     return (@a == @b) || (@a == @c) || (@b == @c)
   end

end
