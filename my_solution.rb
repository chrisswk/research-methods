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
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5: Ellis
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
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
