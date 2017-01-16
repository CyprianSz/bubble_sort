=begin
def bubble_sort(numbers)
	counter = 0
	unless counter >= numbers.length
		0.upto(numbers.length - 1) do |n|
			if numbers[n] > numbers[n+1]
				numbers[n], numbers[n+1] = numbers[n+1], numbers[n]
				counter = 0
			else 
				counter += 1
			end
		end	
	end
	return numbers
end

puts bubble_sort([2,5,1,2,3])
=end	

def bubble_sort(numbers)
	puts numbers
	puts numbers.length
	counter = 0

	0.upto(numbers.length - 2) do |n|
		if numbers[n] > numbers[n+1]
			numbers[n], numbers[n+1] = numbers[n+1], numbers[n]
			counter = 0
		else 
			counter += 1
		end
		puts counter
	end
end

bubble_sort([1,2,52,31,5341])