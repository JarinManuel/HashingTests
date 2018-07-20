#require 'csv'

#OpenHash = {}

#CSV.foreach("TestingHash.csv") do |line| 

#  OpenHash[line[0].to_i] = [line[1].strip, line[2].to_f]

#end

#OpenHash[0]

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

columns_to_keep = %w(Food Brand)

# get the data
mycsv = CSV.parse("TestingHash.csv", :headers => true)

# change to column mode, filter by column name and change back to default
# mode of operation
mycsv.by_col!.delete_if do |col_name, col_values|
  !columns_to_keep.include?(col_name)
end.by_col_or_row! 
