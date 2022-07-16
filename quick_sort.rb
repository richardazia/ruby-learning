class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quicksort, pivot, *right.quicksort
  end
end

arr = [5,6,8,12,10,3,5,7,9,1,1,8]

p arr.quicksort