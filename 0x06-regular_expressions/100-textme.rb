#!/usr/bin/env ruby

# Get input from command line argument
input_string = ARGV[0]

# Extract sender, receiver, and flags from the input string
sender = input_string[/from:\+*\w*/][5..-1]
receiver = input_string[/to:\+*\w*/][3..-1]
flags = input_string[/flags:(.*?)\]/, 1]

# Format and print the message
message = "#{sender},#{receiver},#{flags}"
puts message
