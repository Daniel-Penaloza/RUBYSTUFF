class Car
    def Car.milesToKilometers(miles)
        miles * 1.60934
    end
end
miles = [20,56,80,70]
puts "Miles To Kilometers"
for m in miles
    puts "#{m}: \t #{Car.milesToKilometers(m)}"
end