def my_min(arr) #O(n^2)
  (0..arr.length-1).each do |i|
    comparison = arr.take(i) + arr.drop(i+1)
    return arr[i] if comparison.all? {|ele| ele > arr[i]}
  end
end


def my_min(arr) #O(n)
  min = arr[0]
  (1..arr.length-1).each do |i|
    min = arr[i] if arr[i] < min 
  end
  min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)

def largest_contiguous_subsum(arr) #O(n^2 + n!)
  subarr = []
  (0..arr.length - 1).each do |i|
    (i..arr.length - 1).each do |j|
      subarr << arr[i..j]
    end
  end
  subarr.map! {|ele| ele.sum}
  return subarr.max
end

# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list)

def largest_contiguous_subsum(arr) #O(n)
  largest_sum, curr_sum = 0, 0
  arr.each do |el|
    curr_sum = 0 if curr_sum < 0
    curr_sum += el
    largest_sum = curr_sum if curr_sum > largest_sum
  end
  largest_sum
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)