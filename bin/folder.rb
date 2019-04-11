#!/usr/bin/ruby

# Take user input for filepath
puts "Please enter the root directory of your files:"
dir = gets.chomp
Dir.chdir(dir)

# Iterates through filenames
puts "Iterating through #{dir}..."
files = Dir.glob "*.JPG"
# TO-DO: Make more versatile (.jpg, .Jpeg, etc.)
puts files

# Check if folder exists

# Else create folder

# Move file into respective folder
