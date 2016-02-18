def bad_two_sum?(arr, target)
  arr.length.times do |i|
    arr[(i + 1)...arr.length].each do |el|
      return true if arr[i] + el == target
    end
  end

  false
end

# Time complexity n * (n - 1) => O (n^2)


def ok_two_sum?(arr, target)
  arr = arr.sort
  result = nil
  arr.each_with_index do |el, i|
    array = arr[0...i] + arr[(i + 1)..-1]
    result = array.bsearch { |x| x + el == target }
    return true if result
  end
  false
end

#Time complexity (n * logn) +(n * logn) = 2nlogn => O(nlogn)

def pair_sum?(arr, target)
  elements = Hash.new(0)
  arr.each do |el|
    difference = target - el
    return true if elements.has_key?(difference)
    elements[el] += 1
  end

  false
end

#Time complexity of O(n)

if __FILE__ == $0
  arr = [0, 1, 5, 7]
  p pair_sum?(arr, 6)  ==  true
  p pair_sum?(arr, 10) ==  false
end
