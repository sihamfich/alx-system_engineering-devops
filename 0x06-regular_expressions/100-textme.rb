#!/usr/bin/env ruby

# Extract sender, receiver, and flags from the input string
sender = ARGV[0][/from:\+*\w*/][5..-1]
receiver = ARGV[0][/to:\+*\w*/][3..-1]
flags = ARGV[0][/flags:(.*?)\]/, 1]

# Format and print the message
message = "#{sender},#{receiver},#{flags}"
puts message
