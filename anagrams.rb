def first_anagram(first, second)
  a = first.split("").permutation.to_a.map { |split_string| split_string.join("") }
  a.include?(second)
end
#time complexity is O(n!)

def second_anagram(first, second)
  a = first.dup
  b = second.dup

  first.each_char do |el1|
    second.each_char do |el2|
      if el1 == el2
        a.delete!(el1)
        b.delete!(el1)
      end
    end
  end
  a.empty? && b.empty?
end

#Time complexity is n * n * (2n) => O(n^3)

def third_anagram(first, second)
  first.split("").sort == second.split("").sort
end

#Time complexity = n*logn + n*logn => O(n*logn)
#This method is better than the second_anagram.

def fourth_anagram(first, second)
  count_a = Hash.new(0)
  count_b = Hash.new(0)

  first.each_char do |char|
    count_a[char] += 1
  end

  second.each_char do |char|
    count_b[char] += 1
  end

  count_a == count_b
end

#Time complexity = n + n + 1 => O(n)

if __FILE__ == $0
  p fourth_anagram("gizmo", "sally")  == false
  p fourth_anagram("elvis", "lives") == true
end
