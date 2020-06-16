class Person
    attr_reader :eyes, :mouth, :age
    def initialize(eyes = 2, mouth = 1, age)
        @eyes = eyes
        @mouth = mouth
        @age = 18
    end

    def description
        puts "The person has #{@eyes} eyes a #{@mouth} and his age is #{@age}"
    end
end

class Adult < Person
    def initialize(age)
        # By default when we use the super keyword we are having access to the properties of the parent class
        # In this case are the eyes and mouth attributes. So if we call the description method via an instance of Adult
        # We can have a perfect description of that instance.
        super
        @age = age
    end
end

person = Adult.new(24)
person.description