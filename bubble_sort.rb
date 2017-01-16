def bubble_sort(numbers)
	counter = 0
	while counter < numbers.length
		0.upto(numbers.length - 2) do |n|
			if numbers[n] > numbers[n+1]
				numbers[n], numbers[n+1] = numbers[n+1], numbers[n]
				counter = 0
			else 
				counter += 1
			end
		end	
	end
	numbers
end

start_time = Time.now
p bubble_sort([4,3,78,2,0,2])
p "Time elapsed: #{(Time.now - start_time)*1000} milliseconds"