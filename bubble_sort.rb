# set up new method for bubble sorting an array
# Get the length of the array
# Set a flag indicating whether the array should be sorted(swapped)
# Loop through the array
# If the left side number is greater than the right side number, swap the left and right
# Set the flag that the iteration has been sorted
# Break out of the loop if the flag is false
# Set flag to false
# Return sorted array

def bubble_sort(arr)
  length = arr.length
  swapped = true

  loop do
    (length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if not swapped
    swapped = false
  end
  arr
end

unsorted_array = [5, 3, 8, 2, 1, -10]
p bubble_sort(unsorted_array)
