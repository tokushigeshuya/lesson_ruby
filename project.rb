# str = "■ "
# num = 10
# i = 0
# string = str*num

# while i <= 10 do
#  puts string
#  string = string.chomp('■ ')
#  i += 1
# end



str = "abababab"
puts str.sub(/ab/,"xy")

puts "abcde".index("de")

puts "abcde".delete("cd")

puts "abcde".chomp("e")

puts "123".to_s

puts "aa bb cc".split
ar = ["aa","bb","cc"]
p ar.join(",")

p "axxxxxx".slice(0..3)
p " abc ".strip

puts "ABCDEF"[3...-1]

str = "abcdef"
str[2, 5]="ba"
puts str

x = ["foo", "bar", "baz"]
y = x.join("\t").split(/\t/)
p x == y  
# \tはタブのこと