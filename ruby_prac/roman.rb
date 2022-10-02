H = {"VI"=>" 4", "XI"=>" 9", "LX"=>" 40", "CX"=>" 90", "DC"=>" 400", "MC"=>" 900",
     "I"=>" 1", "V"=>" 5", "X"=>" 10", "L"=>" 50", "C"=>" 100", "D"=>" 500", "M"=>" 1000"}

def roman_to_integer(roman_string)
   roman_string.reverse.gsub(Regexp.union(H.keys), H).split.sum(&:to_i)
end

puts roman_to_integer("VI")


#PROCESS

# k = H.keys
#   #=> ["VI", "XI", "LX", "CX", "DC", "MC", "I", "V", "X", "L", "C", "D", "M"]
# r = Regexp.union(H.keys)
#   #=> /VI|XI|LX|CX|DC|MC|I|V|X|L|C|D|M/
# t = s.gsub(r, H)
#   #=> " 1 5 10 10 100 100"
# a = t.split
#   #=> ["1", "5", "10", "10", "100", "100"]
# a.sum(&:to_i)
#   # => 226