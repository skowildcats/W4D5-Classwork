def first_anagram?(str, str2) #O(n!)
  all_ana = str.chars.permutation.to_a #n!
  all_ana.map! {|ele| ele.join('')} #n
  all_ana.include?(str2)
end

# p first_anagram?('hel', 'leh')

def second_anagram?(str1, str2) #O(n^2)
  str1.each_char do |char| #n
    idx = str2.index(char) #n
    return false if idx.nil?
    str2 = str2[0...idx] + str2[idx+1..-1]
  end
  return true if str2.empty? 
end

# str1 = 'hey'
# str2 = 'yeh'

# p second_anagram?(str1, str2)

def third_anagram?(str1, str2) #O(n)
  str1.chars.sort == str2.chars.sort #n
end

str1 = 'hey'
str2 = 'ye'

# p third_anagram?(str1, str2)

def forth_anagram?(str1, str2) #O(n)
  # hash1 = Hash.new(0)
  # hash2 = Hash.new(0)
  # str1.each_char do |char| #n
  #   hash1[char] += 1
  # end
  # str2.each_char do |char| #n
  #   hash2[char] += 1
  # end
  # hash1.each do |k, v| #n
  #   return false unless hash2.has_key?(k)
  #   return false unless v == hash2[k]
  # end
  # true
  hash = Hash.new(0)
  str1.each_char do |char|
    hash[char] += 1
  end
  str2.each_char do |char|
    return false unless hash.has_key?(char)
    return false unless hash[char] == str2.count(char)
  end
  true
end

p forth_anagram?(str1, str2)