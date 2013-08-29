=begin
crazy_sum
Write a method named crazy_sum(numbers) that takes an array of numbers. crazy_sum should multiply each number in the array by its position in the array, and return the sum.
=end

=begin
def crazy_sum(numbers)
  for i in 0...numbers.length
    sum = numbers[i] * i
    return sum
  end
end


def crazy_sum(numbers)
  i = 0
  while i < numbers.length
    return i * numbers[i]
    i += 1
  end
  sum = 0
  numbers.each { |a| sum+=a }
  print sum
end

def crazy_sum(numbers)
  i = 0
  sum = 0
  numbers.each { |i| sum += (i * (numbers[i])) }
  i += 1
  end
  print sum
end
=end

def crazy_sum(numbers)
  i = 0
  sum = 0
  numbers.each { |i| sum += (i * numbers.index(i)) }
  i += 1
  return sum
end

#doesn't work for the repeated 2...figure that out later

=begin
square_nums
Write a method square_nums that takes a number max and returns the number of perfect squares less than max.
=end

def square_nums(max)
  squares = []
  n = 0
  while n < max
   if ((n**(0.5))%1)==0
    squares<<n
   else
    return false
   end    
  n += 1
  end
return squares.count
end
=begin
  crazy_nums
  Write a method crazy_nums that takes a number, max, and returns an array of the integers that

  are less than max
  are divisible by either three or five
  are not divisible by both three and five
  You may wish to use the modulo operation: 5 % 2 returns the remainder when dividing 5 by 2: 1. If num is divisible by i, then num % i == 0.
=end

def crazy_nums(max)
  array = []
  i = 0
  while i < max
    if ((i%3 == 0) || (i %5 == 0)) && !((i%3 == 0) && (i %5 == 0))
      array<<i
    end
    i += 1
  end
  return array
end
  