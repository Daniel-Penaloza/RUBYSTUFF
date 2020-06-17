class User
    attr_accessor :name    
    @@users = []
    @@counter = 0
    def self.massive_description
        looping_users
        puts "The current instances of Users are: \n"
        puts "#{@@users}"
    end

    def initialize(name)
        @name = name
        @@counter+=1
        @@users << self if @@counter <= 3
    end

    def self.looping_users
        loop do
            puts "The current value of the counter is #{@@counter}"
            break if @@counter >= @@users.length
        end
    end
end

user_one = User.new("Daniel")
user_two = User.new("Christian")
user_three = User.new("Richard")
user_four = User.new("Kevin")
user_five = User.new("Tom")
user_six = User.new("Alexander")

puts User.massive_description
