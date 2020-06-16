class Car
    attr_accessor :make, :model

    def initialize(make, model)
        self.make = make
        self.model = model
    end

    # The way that the three equal operator works is via the implicit use of the method ===
    # This method returns returns true or false base on the comparasion of the maker of the car.
    def ===(another_object)
        self.make == another_object.make
    end
end


car_one =   Car.new("Ford", "Focus")
car_two =   Car.new("Honda", "Civic")
car_three = Car.new("Ford", "Mustang")
car_four =  Car.new("Honda", "Accord")

case car_one
when car_two
    puts "Same make as car_two."
when car_three
    puts "Same make as car_three."
when car_four
    puts "Same make as car_four."
else
    puts "There's not matches."
end