class Integer
    def my_times
        c = 0
        puts "c == 0"
        # Until c is equal to 5 add 1 to c
        puts "until c == #{self}..."
        until c == self
            yield c
            c += 1
        end
        self
    end
end

ret = 5.my_times{|i| puts "I'm on iteration #{i}!"}
puts ret