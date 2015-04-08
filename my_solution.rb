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
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3: Chris
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


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
