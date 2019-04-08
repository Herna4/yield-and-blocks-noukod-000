def hello_t(array)
   i = 0
 
  while i < array.length
    yield(array[i]) #calls the block once for each element in the passed-in array 
    i = i + 1
  end
   array #return the original array 
end

# call your method here!
hello_t([array]) { |name| puts "Hi, #{name}" }

