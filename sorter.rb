def sort some_array # This "wraps" recursive_sort.

recursive_sort some_array, []


end

def recursive_sort unsorted_array, sorted_array
	x = unsorted_array.pop
		
	proper = sorted_array.last
	
	if sorted_array == [] or x >= proper
		
		sorted_array.push(x)
	else
		sl = sorted_array.length
		ind = sl-1
			
			
			while x != nil  
				
				
				proper = sorted_array[ind]
				
				if x >= proper
					sorted_array.insert(ind+1, x)
					
					x = nil
				elsif ind == 0
					sorted_array.unshift(x)
					
					x = nil
				end
				ind = ind-1
			end
			
		
			
		
	end
	
	ul = unsorted_array.length
	
	if ul == 0
		
	else
		
		recursive_sort unsorted_array, sorted_array
		
	end
	
	sorted_array

end

tombocske = ['kaja','kacsa','kola','sisak','papafej','cukken','alma','zacsi','sisak','papafej','a','g','i']

puts
puts 'Original array: ' + tombocske.to_s
puts
puts 'With .sort:   ' + tombocske.sort.to_s
puts 'Sorted array: ' + sort(tombocske).to_s

