$counter = 1
def numbers(n)
puts $counter
$counter = $counter + 1
if (n == 0)
   return 0
 elsif (n == 1)
   return 1
 else
   return numbers(n-1) + numbers(n-2)
 end
end


puts '----- test 1 ------'

puts numbers(10)

$counter = 1
puts 'test ----- 2 ---- '
puts numbers(15)

