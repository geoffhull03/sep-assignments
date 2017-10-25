def binary_search(collection, value)
 low = 0
 high = collection.length - 1

 while low <= high
   mid = (low + high) / 2
   if collection[mid] > value then
     high = mid - 1
   elsif collection[mid] < value
     low = mid + 1
   else
     return mid
   end
 end
 return "not found"
end

arr = []
(0..500).each do |i|
  arr.push(i)
end

puts binary_search(arr, 100)

#Do I just have to create a the collection?
#create an array with numbers from 1 to...1000?
