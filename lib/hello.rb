require_relative "../lib/hello.rb"

def hello_t(array)
  
  if block given?
   i = 0
 
  while i < array.length
    yield(array[i]) #calls the block once for each element in the passed-in array 
    i = i + 1
    
  end
   array #return the original array 
 else
    puts "Hey! No block was given!"
end
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end