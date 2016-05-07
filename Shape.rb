class Shape
attr_accessor :s
def initialize(sp)
	puts "\nIt is #{sp}"
	@s=sp
end
def area()
 	print "Area of #{s} is="
 end 
end
class Circle < Shape
	attr_accessor :rad
	def initialize(c)
	super(c)
	end
	def area()
		super()

		print "#{3.14*rad*rad}"
	end
end
class Rectangle < Shape
	attr_accessor :length, :width
	def initialize(r)
	super(r)
	end
	def area()
		super()

		print "#{length*width}"
	end
end

circle=Circle.new("Circle")
puts "Enter the radious of circle=>"
circle.rad=gets.to_f()
circle.area
rect=Rectangle.new("Rectangle")
puts "Enter the length of Rectangle=>"
rect.length=gets.to_f()
puts "Enter the width of Rectangle=>"
rect.width=gets.to_f()
rect.area