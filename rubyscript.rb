#!/usr/bin/env ruby -wKU

#!/usr/bin/env ruby
require 'fileutils'
require 'digest/sha1'

# Location of the content that we want to collect
src_dir = './content'

# Glob identifying which files or file types to collect (See other script)
files = Dir['content/**/**']

# Number of files located
file_count = files.count
puts "FILE COUNT: #{file_count}"

# An empty array to store the hashes of the files that we want.
# This will need to be kept in-sync with the file list.
# Find a better way to do this in a single object while still maintaining our search capability
hashes = []

# Iterate through each of the files
files.each do |f|   
  
end


# Iterate through each of the files by index, assigning the same index to the hash array as the item it describes
for i in 0..file_count-1
   hashes[i] = Digest::SHA1.file(files[i]).hexdigest
   puts hashes[i] + ' : ' + files[i]
end

puts hashes.select{|item| hashes.count(item) > 1}.uniq