#require 'csv'

#OpenHash = {}

#CSV.foreach("TestingHash.csv") do |line| 

#  OpenHash[line[0].to_i] = [line[1].strip, line[2].to_f]

#end

#puts OpenHash

require 'csv'
csv_data = CSV.read 'TestingHash.csv'
headers = csv_data.shift.map {|i| i.to_s }
string_data = csv_data.map {|row| row.map {|cell| cell.to_s } }
array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }

puts string_data[2]['Good'] 
