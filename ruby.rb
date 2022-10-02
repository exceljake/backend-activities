def SearchingChallenge(str)

  # code goes here
  # must use while loop to iterate again and again over the string
  # if the loop sees a palindrome longer than the first one
  # that it has detected, it should disregard the first one
  # and print the longest one
  # should use slice

  #declare final output
  final_palindrome = '' 
  #declare the string_index in slice
  a = 0 
  #first while condition, string_index will increment
  #this is to increment the slice attributes to continue finding
  #the longest palindrome
  while a < str.length 
  #declare the substr_length in slice
    b = 1 
    #second while condition to increment substr_length
    while (a + b) < str.length
      c = string.slice(a, b)
      # if there is a shorter palindrome, this if statement
      # will override that and change the var value to the
      # longest one that have been detected
      if (c.length > final_palindrome.length) && (c == c.reverse)
        final_palindrome = c 
        # failing condition, if less than 2, should return none
        if final_palindrome.length < 2 
          final_palindrome = "none"
        end
      end
      b += 1
    end
    a += 1
  end
  final_palindrome.reverse + ":" + "qcwpfuhva".reverse
end

# keep this function call here 
puts SearchingChallenge(STDIN.gets)




#Have the function StringChallenge(str) take the str parameter being passed which will be two times (each properly formatted with a colon and am or pm) separated by a hyphen and return the total number of minutes between the two times. The time will be in a 12 hour clock format. For example: if str is 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am the output should be 1320.

# Examples
# Input: "12:30pm-12:00am"
# Output: 690
# Input: "1:23am-1:08am"
# Output: 1425

# def StringChallenge(str)

#   # code goes here
#   # string must be separated into two 
#   #

#   #if 
#   if (str.chars).count = 15 
#     first = str.slice(0...5)
#     second = str.slice(7..13)
    

#   return str.chars

# end


puts Time.parse("12:30")