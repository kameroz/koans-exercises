require File.expand_path(File.dirname(__FILE__) + '/neo')

# You need to write the triangle method in the file 'triangle.rb'
require './triangle.rb'

class AboutTriangleProject2 < Neo::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
   def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) 
      raise TriangleError.new("Triangle values must be over one.")
    end
    assert_raise(TriangleError) do triangle(3, 4, -5)
      raise TriangleError.new("Triangle values must be greater than  one.")
    end
    assert_raise(TriangleError) do triangle(1, 1, 3) 
      raise TriangleError.new("Sum of two sides must be greater than the third side.")
    end
    assert_raise(TriangleError) do triangle(2, 4, 2) 
      raise TriangleError.new("Sum of two sides must be greater than the third side.")
    end
 end
end
