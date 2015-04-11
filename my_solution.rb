# U2.W4: Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution: Brian

# The method takes two arguments, 
#  the array of words and the letter we're searching for
def my_array_finding_method(sentence, letter)

  # Convert all the elements inside the array to strings using map.
  # We'll get errors if we don't convert to strings.
  convert_to_string = sentence.map { |element| element.to_s }

  # Then we use the 'select' method to iterate through the array and search.
  # The select method will return an array. We just need to tell it what to search for.
  # We search each element in the array using the .include? method for the  'letter' variable.
  convert_to_string.select { |element| element.include?(letter) }
end

# This method takes two arguments,
#  a hash of pets and the age we're searching for.
def my_hash_finding_method(pets, age)

  # Create a new hash using the select method.
  # Select will go through each item in the hash and
  #  return a new hash that only includes what we're searching for.
  # In this case I'm searching for a value that is equal to the age argument.
  matched = pets.select { |key,value| value == age }
  
  # Our new hash has the key/value pairs of these pets, but we only 
  #  want to return the pets names.
  # The keys in this hash are th pets names, so we just return what's below.
  matched.keys
end
# Identify and describe the Ruby method(s) you implemented.
# .map - Iterates through an array and returns a new array where each element 
#        has been modified based on your command. I used it to make sure all 
#        elements inside the array were strings.
# .select - Iterates through an array and returns a new array based on your
#           selection. I used it in both methods.
# .include? - Searches a string for your argument. I used the letter argument.
# .keys - Returns the keys of a hash as an array.

# Person 2: Carissa
#pseudocode
#input: an array & a number (to be added to all internal numbers)
#output: altered array from input (destructive method)
#method/process:
#use the each iterator on the array
#check if each element's class is an integer
#if it's an integer, increment by the given number (end)
#return array
def my_array_modification_method!(array, incrementer)
  array.each_with_index do |element,index|
    if element.class == Fixnum
      element += incrementer
      array[index] = element
    end
  end
  p array
  return array
end


#pseudocode
#input: hash & the number of years that have passed
#output: updated hash
#method:
#iterate over the hash with .each_pair & two block variables (key, value)
#add years_passed to the value
#reassign the value of the key to years_passed
#return hash
def my_hash_modification_method!(hash, years_passed)
  hash.each_pair do |petname, age|
    age += years_passed
    hash[petname] = age
  end
  p hash
  return hash
end


# Identify and describe the Ruby method(s) you implemented.
#.each_with_index - this is an Enumerable method that can be used on both hashes and arrays.
#The method is followed by a block with two block variables. With arrays, this is the element and the index. 
#With hashes, the first is the key-value pair, in parentheses. The given arguments are then passed to the code block. 
#The method, other than taking two variables, operates like .each. This can be useful when you want to use the index to 
#replace or alter elements/pairs at certain indicies.
#
#.each_pair - this is an iterator that works like .each does for an array, but pulls out both the key and value, 
#which become block variables. It then assigns each key & value to the block variables, and executes the code in the 
#code block on them, before moving on to the next key-value pair.
#
#.class - this method returns the class of a certain object & can be used to test/determine if something belongs to the String
#class, the Fixnum class, the Array class, etc.
#
#
# Person 3: Chris
#Input: Array
#Output: Sorted array.  From the README, I wasn't sure if the returned array should be
#the array passed in the argument or if it should be a new array.  I ended up using the
#array passed in the argument, so I guess this method is destructive.
def my_array_sorting_method(source)
  source.sort_by { |value| value.to_s }
end
#The most difficult thing here was identifying which method to use.
#Array.sort returned a Fixnum exception when I ran the simplest version that I could
#because 2 and 3 are integers, not strings, so they cannot be ordinally compared.
#So I did some research and found http://ruby.bastardsbook.com/chapters/collections/
#This resource suggested sort_by as an alternative to sort which allowed me to cast
#integer array values into strings before being sorted.  So far this technique appeared to work.
#I also got to integrate the evaluation of code as a block, which I learned while doing
#the pair challenge with David.  Makes me feel kinda good to reuse things I learn!

#  So, the array, source, invokes the sort_by method on itself.
#  The sort_by method compares the value defined in the block or in this case line
#  of code following the variable declaration in the vertical brackets.
#  The method then returns a sorted array.
#  Just for fun, I added an exclamation point to the method and it still worked, so
#  I think even though the method definition syntax may be wrong because it doesn't
#  include an exclamation mark, the array passed to the method is changed.
#  Testing...
# test_array = ["a", 1, "butter", "GOES ON SMOOOOOTH"]  Commented out so subsequent tests
# puts my_array_sorting_method(test_array)              work well.
# puts "Did the array change?"
# puts test_array.inspect
#Feel free to run the code but the array changes.  And when I delete the exclamation
#mark the output changes.  See below.
#Destructive output
# 1
# GOES ON SMOOOOOTH
# a
# butter
# Did the array change?
# [1, "GOES ON SMOOOOOTH", "a", "butter"]
# 2
# 3
# I
# but
# have
# only
# pets
# want
# Non-destructive(constructive?) output
# 1
# GOES ON SMOOOOOTH
# a
# butter
# Did the array change?
# ["a", 1, "butter", "GOES ON SMOOOOOTH"]
# 2
# 3
# I
# but
# have
# only
# pets
# want
# Ultimate lesson of this exercise?  Learn to use references and adapt them.

#puts my_array_sorting_method(i_want_pets)  Commented out for your convenience.

#Input: a hash
#Output: Since the data in this method is arranged in an order, I believe I am supposed
#to return an array...
#Pseudo code:
#  After defining the method and passing a hash to it, I initialize a new array
#  Then I iterate through the hash, storing key and value to it
#  Then I iterate through the array.

def my_hash_sorting_method(source)
   source.sort_by { |key, value| value }
end

#  This was another triumph of starting with my own approach then
#  researching hashes and finding a superior alternative.  In this case I started off
#  reading through the reading, then read through Bastards of Ruby's entry on Hashes
#  then http://www.rubyinside.com/how-to/ruby-sort-hash.
#  To complete my documentation I also used RubyDoc.
 
# Identify and describe the Ruby method(s) you implemented.
#  Array.sort_by {|value_of_array| Sorts by the data type you convert values being sorted to} - Returns an array
#  Object.to_s : Converts an object to a string(if possible?)
#  Hash.sort_by { |key, value| Sorts by the reference, either key or value, that you specify}  Returns an array


# Person 4: David
# We will first define a method that accepts two arguments: an array(source) and a letter to delete (thing_to_delete)
def my_array_deletion_method!(source, thing_to_delete)
  #We then use the delete_if method, which searches through an array and deletes any objects that the block returns as true.
  #Our block takes the array object, turns it into a string (.to_s) and uses the .include? method to ask if the array object includes "thing_to_delete" (as a string).
  #This effectively runs, "if an array object includes a certain letter, delete that object from the array"
  source.delete_if {|a| a.to_s.include?(thing_to_delete.to_s)}
  #We now return the modified source array which no longer has the objects that included "thing_to_delete"
  return source
end

# We will first define a method that accepts two arguments: a hash(source) and a string to delete (thing_to_delete)
def my_hash_deletion_method!(source, thing_to_delete)
  #We then use the delete_if method (just like in the above aray method), which will search through the hash keys and delete any keys that the block returns as true.
  #Our block takes the hash key, turns it into a string (.to_s) and uses the .include? method to ask if the hash key includes "thing_to_delete" (as a string).
  #This effectively runs, "if a hash key includes "thing_to_delete", delete that key/value pair from the hash"
  source.delete_if {|key, value| key.to_s.include?(thing_to_delete.to_s)}
  #We now return the modified source hash which no longer has the key/value pair(s) that included "thing_to_delete"
  return source

end

# Identify and describe the Ruby method(s) you implemented.
# .delete_if - deletes every element of the array or hash for which block evaluates to true.
# .include? - Searches a string for your argument. I used the letter argument for the array and a string argument for the hash.
# .to_s - converts the object into a string so that it can the .include? method can be invoked upon it.


# Person 5: Ellis
#If you have an array and want to split it into two arrays so that one array meets some criteria and the other array
#is everything that doesn't meet the criteria use partition. This actually can be used on hashes also. So
#what you do is take the array or hash, used the partition method on it, and then you need to set up the block, so 
#declare the element and then put some code in. For example on my first example, I call partition on the array 
#called source. Partition acts like each in the sense that it iterates through the list. For this example it asks
#is x a member of the integer class? if so put it in the first array, if it isn't put it in the second array.
#The same thing is happening with the hash, except partition is looking at the key and value of every element and
#asking is value less than or equal to 4? if so put it into the first array and if it isn't put it into the other array. 
#Last but not least partition returns the new array of arrrays/hashes. 
def my_array_splitting_method(source)
  source.partition {|x| x.is_a? Integer}
end

def my_hash_splitting_method(source, age)
  source.partition {|k,v| v <= 4}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
