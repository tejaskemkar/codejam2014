#!/usr/bin/ruby -w

# Created by Michael Williams 12/19/2005
# Licensed under Create Commons Attribution License

# Example 1 - Read File and close
fileName="/home/tejas/NiceQuotes"
counter = 1
file = File.new(fileName, "r")
while (line = file.gets)
    puts "##{counter}: #{line}"
    counter = counter + 1
end
file.close

# Example 2 - Pass file to block
File.open(fileName, "r") do |infile|
    while (line = infile.gets)
        puts "#{counter}: #{line}"
        counter = counter + 1
    end
end

# Example 3 - Read File with Exception Handling
counter = 1
begin
    file = File.new(fileName, "r")
    while (line = file.gets)
        puts "#{counter}: #{line}"
        counter = counter + 1
    end
    file.close
rescue => err
    puts "Exception: #{err}"
    err
end
