# 2
# def sum_double(x, y)
#     x == y ? (x+y)*2 : x+y
# end

# print sum_double(5, 5),"\n" 
# print sum_double(4, 5)

# 3
# def diff(num)
#     num < 21 ? (num-21) : 2*(num-21)
# end
# puts diff(12).abs

# 4
# def equal6(num1,num2)
#     num1==6 or num2 == 6 or (num1 + num2) == 6 or (num1 - num2).abs == 6 ? true : false
# end
# puts equal6(4,10)

# 5
def in1to10(num, flag)
    flag ? num <= 1 || num >= 10 : 1 <= num and num <= 10
end
puts in1to10(5,true)

#6
# def sum(a,b,c)
#     (a==b&&b==c)?0:(a==b)?c:(a==c)?b:(b==c)?a:a+b+c;
# end
# puts sum(4,4,2)

#7
# def sum(a,b,c)
#     return (a==13)?0:(b==13)?a:(c==13)?a+b:a+b+c;
# end
# puts sum(4,4,2)

# 8
# def helloName(name) 
#   return "Hello " + name + "!";
# end

# puts helloName('Maii')


# 9

# def firstTwo(str) 
    # str.length()<2 ? str :str[0, 2];
# end

# puts firstTwo('maii')

# 10
# def nonStart(a,b) 
# return a[1..-1] + b[1..-1];
# end

# puts nonStart('maii','Alaa')

# 11

# def withoutEnd(str) 
#   len = str.length();
#   return str[1...- 1];
# end

# puts withoutEnd('maii')

# 12

def even_ints
    print "Enter your numbers separated by (,): "
    ints_to_be_array = gets.chomp
    ints_arr = ints_to_be_array.split(",")

    even_ints_array = Array.new

    for int in ints_arr do
        if int.to_i % 2 == 0 then
            even_ints_array.push(int.to_i)
        end
    end
    
    print even_ints_array
    print "\n"
    puts even_ints_array.length
    
end

even_ints




