module Flying
  def fly
    'Flying'
  end
end

module Quacking
  def quack
    'Quack'
  end
end

module Swimming
  def swim
    'Swimming'
  end
end

module ReactiveFlying
	include Flying
	def reactive
		'with reactive engine'
	end
end

module Eating 
	def eat
		'Eating'
	end
end

module ShowOff
	def show
		'Show off'
	end
end

class Duck
	 def eat
	 	"Can't eat"
	 end

	 def quack
	 	"Can't quack"
	 end

	 def fly
	 	"Can't fly"
	 end

	 def swim
	 	"Can't swim"
	 end

	 def show
	 	"Can't show off"
	 end
end

class RealDuck < Duck
	include Flying
	include Quacking
	include Swimming
	include Eating
end

class RubberDuck < Duck
	include Swimming
	include Quacking
end

class RoboDuck < Duck
	include ReactiveFlying
end

class WoodDuck < Duck
	include Swimming
end

class GlamourDuck < Duck
	include Eating
	include ShowOff
end

ducks ||= []
ducks << RealDuck.new
ducks << RubberDuck.new
ducks << RoboDuck.new
ducks << WoodDuck.new
ducks << GlamourDuck.new

ducks.each do |duck|
  puts "#{duck.class} #{duck.swim}"
  puts "#{duck.class} #{duck.quack}"
  puts "#{duck.class} #{duck.fly}"
  puts "#{duck.class} #{duck.eat}"
  #puts "#{duck.class} #{duck.reactive}"
  puts "#{duck.class} #{duck.show}"
end