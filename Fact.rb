class Factorial
  attr_accessor :num, :fact, :lines
  def method_missing(n,*a,&b)
    puts "\"#{n}\" this method is not defined in #{self.class} class."
  end
  def read
   	@lines=File.readlines("Input.txt") 
  end
  def calculate_fact
    @num=Regexp.new('\b\d+')
    @lines.each do |line|
      line.scan(@num) do |n|
        @fact=1
        print"Factorial of #{n}="
        while(n.to_i>0)
          @fact*=n.to_i
          n=n.to_i-1
        end
        puts @fact
      end
    end
  end  
end
fact=Factorial.new
fact.read
fact.calculate_fact
#fact.demo
