def bad_two_sum?(arr, target_sum) #O(n^2)
  (0..arr.length-1).each do |i|
    (i+1..arr.length-1).each do |j|
      return true if arr[i] + arr[j] == target_sum
    end
  end
  false
end

def two_sum?(arr, target_sum)
  complements = {}

  arr.each do |el|
    p complements[target_sum - el]
    return true if complements[target_sum - el]
    complements[el] = true
  end

  false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6)