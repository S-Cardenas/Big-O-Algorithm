def windowed_max_range(arr, window)
  current_max_range = nil
  arr.each_with_index do |el, idx|
    break if idx + window == arr.length + 1
    array = arr[idx...(idx + window)]
    max = array[0]
    min = array[0]
    array.each do |el|
      max = el if max < el
      min = el if el < min
    end
    range = (max - min).abs
    current_max_range = range if current_max_range.nil? || range > current_max_range
  end
  current_max_range
end

#Time complexity = n * n = O(n^2)




if __FILE__ == $0
  p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4
  p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5
  p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6
  p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6
end
