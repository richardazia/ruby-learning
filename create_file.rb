# File.open("test.txt", 'w+') {|f| f.write("The test worked")}

# r - reading
# a - append to file
# w writing
# w+ read/write
# a+ open a file for reading and appending
# r+ open a file to update, read and write
#

save_file = File.new("another_test.txt", 'w+')
save_file.puts("ducks, mongoose, triangles")
save_file.puts("riding", "hiking", "sledging")
save_file.puts("The quick brown fox jumped over the very lazy dog")
save_file.close

#######
# Read from the file

read_file = File.read("another_test.txt")

p read_file

p read_file.split(', ')

######
# Delete files

File.delete("another_test.txt")

######
# Update a file

10.times do
  sleep 0.2
  puts "changes stored..."
  #a option to append data
  File.open("server_log.txt", "a")  {|f| f.puts "server started at #{Time.new}"}
end