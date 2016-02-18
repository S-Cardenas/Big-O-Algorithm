# def my_min(list)
#   list.each_with_index do |el, i|
#     is_min = true
#     list.each_with_index do |el2, j|
#       next if i == j
#       is_min = false if el > el2
#     end
#     return el if is_min
#   end
# end

#Time complexity = n**2

def my_min(list)
  current_min = list.first

  list.each do |el|
    current_min = el if el < current_min
  end

  current_min
end

#Time complexity = n


# def my_sub_sum(list)
#   sub_arrays = []
#   list.each_with_index do |el1, i|
#     j = i
#     while j < list.length
#       sub_arrays << list[i..j]
#       j += 1
#     end
#   end
#   sums = sub_arrays.map do |el|
#     el.inject(:+)
#   end
#
#   current_max = sums[0]
#   sums.each do |el|
#     current_max = el if el > current_max
#   end
#   current_max
# end

#Time complexity = n^2 + 2n = n^2

def my_sub_sum(list)
  largest_sum = 0
  current_sum = 0
  list.each do |el|
    current_sum += el
    largest_sum = current_sum if current_sum > largest_sum
    current_sum = 0 if current_sum < 0
  end

  largest_sum
end

#Time complexity = n


if __FILE__ == $0
  list = [5, 3, -7]
  p my_sub_sum(list) == 8
end
