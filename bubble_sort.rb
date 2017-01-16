def bubble_sort(numbers)
	change = true
	while change
		change = false
		0.upto(numbers.length - 2) do |n|
			if numbers[n] > numbers[n+1]
				numbers[n], numbers[n+1] = numbers[n+1], numbers[n]
				change = true
			end
		end	
	end
	numbers
end

def bubble_sort_by(sort)
	change = true
	while change
		change = false
		0.upto(sort.length - 2) do |n|
			if yield(sort[n],sort[n+1]) == 1
				sort[n], sort[n+1] = sort[n+1], sort[n]
				change = true
			end
		end
	end
	sort
end

start_time = Time.now
p bubble_sort([4,3,78,2,0,2])
p bubble_sort_by(["hi","hello","hey"]) {|left, right| right <=> left }
p "Time elapsed: #{(Time.now - start_time)*1000} milliseconds"