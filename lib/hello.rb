require_relative "../lib/hello.rb"

def hello_t(array)
   i = 0
 
  while i < array.length
    yield(array[i]) #calls the block once for each element in the passed-in array 
    i = i + 1
    
  end
   array #return the original array 
end

# call your method here!
array=["Tim", "Tom", "Jim"]
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end