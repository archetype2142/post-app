class TriangleController < ApplicationController

  def index; end
  
  def create
 	raise ArgumentError if params[:triangle].to_a.size > 3  
  	
  	@triangle = triangle_type(params[:triangle].to_a.map(&:to_i))
  	json_response(@triangle, :found)  
  	
  	rescue 
      json_response({ Error: "Exception caught, check params" })
  end

private
  def triangle_type(sides)
  	a = sides[0]
  	b = sides[1]
  	c = sides[2]

  	return "Incorrect" if !triangle_valid?(a, b, c)
  	return "Equilateral" if (a == b && b == c)   
    return "Isosceles" if (a == b || a == c || b == c)   
    return "Scalene"
  end

  def triangle_valid?(a, b, c)
  	return ((a + b <= c || a + c <= b || b + c <= a) ? false : true)
  end

  def permitted_params
    parameters.require(:triangle).permit!
  end
end
