def bubble_sort (userInput)
    sorted = false
    sortingArray = userInput.to_a
    while sorted == false
        sorted = true
        sortingArray.each_with_index do |value, index|
            if index != sortingArray.length - 1
                if value > sortingArray[index + 1]
                    sortingArray[index], sortingArray[index + 1] = sortingArray[index + 1], sortingArray[index]
                    sorted = false
                end
            end
        end
    end
    return sortingArray
end

p bubble_sort([1,9,8,15,21,10,4])
