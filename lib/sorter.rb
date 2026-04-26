class Sorter
  def self.insertion_sort(array)
    numbers = array.dup
    (1...numbers.length).each do |target_index|
      current_number = numbers[target_index]
      index_position = target_index

      while index_position > 0 && numbers[index_position - 1] > current_number
        numbers[index_position] = numbers[index_position - 1]
        index_position -= 1
      end

      numbers[index_position] = current_number
    end

    numbers
  end

  def self.merge_sort(array)
    return array.dup if array.length <= 1

    middle = array.length / 2
    left = merge_sort(array[0...middle])
    right = merge_sort(array[middle..])

    merged = []
    left_index = 0
    right_index = 0

    while left_index < left.length && right_index < right.length
      if left[left_index] <= right[right_index]
        merged << left[left_index]
        left_index += 1
      else
        merged << right[right_index]
        right_index += 1
      end
    end

    merged + left[left_index..] + right[right_index..]
  end
end
