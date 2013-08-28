=begin
Q1: Write a method, pow, that takes two (non-negative, integer) numbers, base and exponent and returns base raised to the exponent power. (No fair using Ruby's base ** exponent notation!).
=end

def pow(base, exponent)
  result = 1
  i = 1
  while i <= exponent
    result = result * base
    i += 1 #why is this necessary?
  end
  
  return result
end

pow(base, exponent)

=begin
Q2: Write a method, sum which takes an array of numbers and returns the sum of the numbers.
=end

def sum(array)
  total = 0
  i = 0
  while i < array.count
    total += nums[i]
    i += 1
  end
  return total
end

=begin
Q3: Write a method, is_prime?, that takes a number num and returns true if it is prime and false otherwise.
You may wish to use the modulo operation: 5 % 2 returns the remainder when dividing 5 by 2: 1. If num is divisible by i, then num % i == 0. (You would not be expected to already know about modulo for the challenge)
=end

#mine
def is_prime?(num)
  for d in 2..(num - 1)
    unless (num % d) == 0
      return true
    else
      return false
    end
  end
end
  
#theirs
def is_prime?(num)
  i = 2
  while i < num
    is_divisible = ((num % i) == 0)
    if is_divisible # is true
      return false
    end
    
    i += 1 #same as "for d in 2..(num - 1)"
  end
  
  true
end

=begin
Q4: Using your is_prime? method, write a new method, primes that takes a (non-negative, integer) number max and returns an array of all prime numbers less than max.
=end

def primes(max)
  array = []
  i = 2
  while i < max {
    if is_prime?(i) #can I also put "i.is_prime?" here?
      array << i
    end
    
    i += 1
    }
    
    puts array
end 
=begin
does it matter if my code has }'s and "end"s mixed in? as long as they're in matching pairs, is it an issue if there's a set of {} within a "do/end"?
=end

primes(12)
end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
