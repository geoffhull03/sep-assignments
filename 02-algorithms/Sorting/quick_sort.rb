def quicksort(array)
  return array if array.length <= 1

  pivot_index = (array.length / 2).to_i
  pivot_point = array[pivot_index]
  array.delete_at(pivot_index)

  lesser = Array.new
  greater = Array.new

  array.each do |x|
    if x <= pivot_point
      lesser << x
    else
      greater << x
    end
  end

  return quicksort(lesser) + [pivot_point] + quicksort(greater)
end

quicksort([3,4,5,6,3,2,4,1,7]) #=> [1,2,3,3,4,5,6,7]
