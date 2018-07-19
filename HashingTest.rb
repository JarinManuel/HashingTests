require 'csv'

OpenHash = {}

CSV.foreach("TestingHash.csv") do |line| 

  OpenHash[line[0].to_i] = [line[1].strip, line[2].to_f]

end

OpenHash
