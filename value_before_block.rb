# Preserve a value before on a block
class Car
    def Car.m2km(miles)
        miles * 1.60934
    end

    def Car.now
        rand(0..500)
    end
end

miles = [50,60,20,80,160]
kilometers = Car.now
puts "The kilometers in this moment are: #{kilometers}"
puts "Miles \t Kilometers"
# The semicolon follower by kilometers (;kilometers) mensar that the block needs its own kilometers that
# may be have been created already in the scope outside of the block.
miles.each do |m;kilometers|
    kilometers = Car.m2km(m)
    puts "#{m} \t #{kilometers}"
end

puts kilometers