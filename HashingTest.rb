#require 'csv'

#hash_testing = CSV.open("TestingHash.csv", "wb", :headers => :first_row)

#CSV.foreach(hash_testing) do |line| 

#  puts line

#end

##############################################################

#require 'csv'
#csv_data = CSV.read 'TestingHash.csv'
#headers = csv_data.shift.map {|i| i.to_s }
#string_data = csv_data.map {|row| row.map {|cell| cell.to_s } }
#array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }

#puts string_data[2]

#require 'csv'

#hasher = {}

#CSV.foreach("TestingHash.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
 # hasher[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
#end

#puts hasher[1]


require 'csv'

#csv_data = CSV.read 'TestingHash.csv'

#headers = csv_data.shift.map { |i| i.to_s }

#string_data = csv_data.map { |row| row.map { |cell| cell.to_s } }

#array_of_hashes = string_data.map { |row| Hash[*headers.zip(row).flatten] }

#puts headers[1]

file_data = {}

File.open('TestingHash.csv', 'r') do |file|

  file.each_line do |line|

    line_data = line.split(',')

    file_data[line_data[0]] = line_data[1]

  end

end

print file_data
