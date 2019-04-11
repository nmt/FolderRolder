#!/usr/bin/ruby
require 'FileUtils'

# Take user input for filepath
puts "Please enter the root directory of your files:"
dir = gets.chomp
Dir.chdir(dir)

# Iterates through filenames
puts "Iterating through #{dir}..."
files = Dir.glob "*.{JPG}"
# TO-DO: Make more versatile (.jpg, .Jpeg, etc.)
files.map do |file|
    roll_name = file.split('-')[1]
    puts roll_name
    current_file = File.join(Dir.pwd, file)
    new_file_folder = File.join(Dir.pwd, roll_name)
    new_file = File.join(new_file_folder, file)

    puts current_file
    puts new_file

    # Check if folder exists
    if !File.directory?(new_file_folder)
        # Else create folder
        Dir.mkdir(new_file_folder)
    end
    # Move file into respective folder
    FileUtils.mv current_file, new_file
end
