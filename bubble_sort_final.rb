numbers = [3.1415926, 5358979323846, 26, 4338327950, 288419716, 939937510, 5820, 97494459230, 7816, 406, 286, 20, 89986, 280, 348253421170, 6, 79].shuffle



def bubble_sort(numbers)
  index = 0
  total_index = 0
  can_break = true
  else_count = 1

  puts "The input array has #{numbers.length} digits..."
  puts "Here is the list of numbers:"
  p numbers

  (numbers.length).times do
    (numbers.length).times do
      if numbers[index + 1] && can_break
        if numbers[index] > numbers[index + 1]  
          temp = numbers[index]                 
          numbers[index] = numbers[index + 1]   
          numbers[index + 1] = temp             
        else
          else_count += 1
        end
        index += 1
        total_index += 1
        if else_count == (numbers.length) - 1
          can_break = false
        end
      end
    end
    index = 0
    else_count = 0  
  end
      
  puts "It took #{total_index} total cycles"
  p numbers

end



bubble_sort(numbers)






######## STREAMLINED

def bubble_sort_b(numbers)
  index = 0
  can_break = true
  else_count = 0

  (numbers.length).times do
    (numbers.length).times do
      if numbers[index + 1] && can_break
        if numbers[index] > numbers[index + 1]  
          temp = numbers[index]                 
          numbers[index] = numbers[index + 1]   
          numbers[index + 1] = temp             
        else
          else_count += 1
        end
        index += 1
        total_index += 1
        if (else_count - 1) == numbers.length
          can_break = false
        end
      end
    end

    index = 0
    else_count = 0  
  end
  
  p numbers
end

bubble_sort_b(numbers)
