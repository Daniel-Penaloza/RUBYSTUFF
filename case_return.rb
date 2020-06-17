class User
    attr_accessor :first_name, :last_name

    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end
end

user = User.new("David", "Black")

# Every case statemente evaluates a single object.
# The return value of a entire case statemente is the value returned by the code in that clause
# In this case the whole case is dedicated to finding and argument to the single puts call on the left
puts case
when user.first_name == "David", user.last_name == "Black"
    "You might be David Black."
when Time.dow.wday == 5
    "You're not David Black, but at least it's Friday!"
else
    "You're not David Black, and it's not Friday"
end