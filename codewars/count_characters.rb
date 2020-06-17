#The main idea is to count all the occurring characters in a string. 
#If you have a string like aba, then the result should be {'a': 2, 'b': 1}.
#What if the string is empty? Then the result should be empty object literal, {}.

def count_chars(s)
    h = Hash.new
    s.each_char.each do |c|
        s.count(c) > 1 ?  h["#{c}"] = s.count(c) : h["#{c}"] = s.count(c)
=begin
        Is the same as the one line ternary operation
        if s.count(c) > 1
            h["#{c}"] = s.count(c)
        else
            h["#{c}"] = s.count(c)
        end
=end
    end
    h
end

count_chars("aba")
count_chars("ciclopentanoperhidrofenantreno")
count_chars("")

